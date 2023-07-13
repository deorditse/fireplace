import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:business_layout/business_layout.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../pages/pages.dart';
import 'components/bottom_row_with_parameters.dart';
import 'components/loading_fireplace.dart';
import 'components/sliders/slider_smart_fire_A71000.dart';
import 'components/timer_work_fireplace/timer_work_fireplace.dart';

class BodyConnectedPage extends StatelessWidget {
  const BodyConnectedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ConnectedDirectlyBloc, ConnectedDirectlyState>(
      listener: (context, state) {
        if (state.fireplaceData?.macAdreesInLocalWiFi != null &&
            state.fireplaceData?.ipAdreesInLocalWiFi != null) {
          ///добавляю в локальную сеть камин
          BlocProvider.of<RootBloc>(context)
              .add(const RootEvent.saveFireplaceInLocalStorage());
        }
      },
      builder: (context, state) {
        if (state.failModel != null) {
          return ErrorFireplace(failModel: state.failModel!);
        } else if (state.fireplaceData != null) {
          if (state.fireplaceData!.isBlocButton) {
            return const BlockPage();
          } else if (state.isSettingButtonActive) {
            return SettingPage(
              fireplaceData: state.fireplaceData!,
            );
          } else {
            return Stack(
              children: [
                Column(
                  children: [
                    MyContainerAlert(
                      child: FittedBox(
                        child: Text(
                          state.alertMessage,
                          style: myTextStyleFontRoboto(
                            fontSize: 24,
                            textColor: myTwoColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: mySizedHeightBetweenAlert),
                    if (state.fireplaceData!.optionTimerStatusAndValue.keys
                            .first !=
                        null)
                      timeWorkFireplace(context),
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: MediaQuery.of(context).size.width / 5,
                      child: TextButton(
                        onPressed: () {
                          BlocProvider.of<ConnectedDirectlyBloc>(context).add(
                              const ConnectedDirectlyEvent
                                  .isPlayOrStopFireplace());
                        },
                        child: SvgPicture.asset(
                          (!state.fireplaceData!.isPlayFireplace)
                              ? 'assets/button_fireplace/play.svg'
                              : 'assets/button_fireplace/stop.svg',
                          semanticsLabel: 'icon_bottom',
                          fit: BoxFit.none,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const BottomRowWithParameters(),
                  ],
                ),
                // если опция слайдера включена OptionSliderFireplace
                if (state.fireplaceData!.sliderValue.keys.first != null &&
                    state.fireplaceData!.statusFireplaceAndMessage.keys.first ==
                        0)
                  const Positioned(
                    right: 0,
                    bottom: 70,
                    child: SliderSmartFire(),
                  ),
              ],
            );
          }
        } else {
          return LoadingFireplace();
        }
      },
    );
  }
}
