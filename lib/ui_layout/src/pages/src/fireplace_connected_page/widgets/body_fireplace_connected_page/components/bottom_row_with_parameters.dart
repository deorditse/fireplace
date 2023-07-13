import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../pages/src/block_page/widgets/navigation_bar.dart';

Widget imageOil() => SvgPicture.asset(
      'assets/icons/oil.svg',
      semanticsLabel: 'icon_bottom',
      fit: BoxFit.contain,
    );

class BottomRowWithParameters extends StatelessWidget {
  const BottomRowWithParameters({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectedDirectlyBloc, ConnectedDirectlyState>(
      buildWhen: (prev, cur) =>
          (cur.fireplaceData?.temperature != prev.fireplaceData?.temperature) ||
          (cur.fireplaceData?.wet != prev.fireplaceData?.wet) ||
          (cur.fireplaceData?.CO2value != prev.fireplaceData?.CO2value) ||
          (cur.fireplaceData?.percentOil != prev.fireplaceData?.percentOil),
      builder: (context, state) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 4.3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 100,
                      child: FittedBox(child: imageOil()),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(child: Container()),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            state.fireplaceData?.percentOil != null
                                ? '${state.fireplaceData!.percentOil!.toInt()}%'
                                : '...%',
                            style: myTextStyleFontSarpanch(fontSize: 39)
                                .copyWith(height: 0.01),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Flexible(
                child: Row(
                  children: [
                    iconValueDescription(
                      iconPath: 'assets/icons/temperature.svg',
                      value: state.fireplaceData?.temperature != null
                          ? '${state.fireplaceData!.temperature!.toInt()}°C'
                          : '...°C',
                      description: 'температура',
                    ),
                    iconValueDescription(
                      iconPath: 'assets/icons/wet.svg',
                      value: state.fireplaceData?.wet != null
                          ? '${state.fireplaceData!.wet!.toInt()}%'
                          : '...%',
                      description: 'влажность',
                    ),
                    state.fireplaceData?.CO2value != null
                        ? iconValueDescription(
                            iconPath: 'assets/icons/level_CO2.svg',
                            value: '${state.fireplaceData!.CO2value!.toInt()}%',
                            description: 'уровень CO2',
                          )
                        : Flexible(
                            child: Container(),
                          )
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
