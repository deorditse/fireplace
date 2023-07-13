import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';
import 'package:fireplace/ui_layout/src/wrappers/wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../styles/styles.dart';
import 'widgets/widgets.dart';

class SearchFireplacePage extends StatelessWidget {
  static const String id = '/searchFireplacePage';

  const SearchFireplacePage({Key? key}) : super(key: key);

  // @override
  @override
  Widget build(BuildContext context) {
    return MySkeletonPage(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Container(),
              ),
              Expanded(
                child: SvgPicture.asset(
                  'assets/icons/header_logo.svg',
                  semanticsLabel: 'header_logo',
                  fit: BoxFit.contain,
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Text(
            'Список доступных каминов:',
            style: myTextStyleFontRoboto(fontSize: 20),
          ),
          const SizedBox(height: 20),
          MyContainerAlert(
            height: MediaQuery.of(context).size.height / 3.5,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Модель:',
                      style: myTextStyleFontRoboto(),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Название',
                      style: myTextStyleFontRoboto(),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Expanded(
                  child: BlocBuilder<RootBloc, RootState>(
                      builder: (context, state) {
                    if (state.failModel != null) {
                      return ErrorFireplace(
                        failModel: state.failModel!,
                      );
                    } else if (state.listFireplacesFromLocalStorage != null) {
                      return FromLocalStorageData(
                        listFireplacesFromLocalStorage:
                            state.listFireplacesFromLocalStorage!,
                      );
                    } else if (state.isLoading) {
                      return const LoadingSearchFireplace();
                    } else {
                      ///камин подключен напрямую
                      return ConnectedDirectlyFireplaceData(
                        wifiName: state.wifiName,
                        ipAddress: state.ipAddress,
                      );
                    }
                  }),
                ),
              ],
            ),
          ),
          const Spacer(),
          rowWithDomain(context: context),
        ],
      ),
    );
  }
}
