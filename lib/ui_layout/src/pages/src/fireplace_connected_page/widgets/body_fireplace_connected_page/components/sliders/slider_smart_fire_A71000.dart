import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'style/gradient_slider.dart';

class SliderSmartFire extends StatelessWidget {
  const SliderSmartFire({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int countLabel = BlocProvider.of<ConnectedDirectlyBloc>(context)
        .state
        .fireplaceData!
        .sliderValue
        .values
        .first!;
    final List<int> _labels =
        List.generate(countLabel, (index) => index.toInt() + 1);
    //Слайдер (убераю его с экрана, когда идет охдажение камина)

    double heightSlider =
        MediaQuery.of(context).size.height / (countLabel > 3 ? 2.2 : 3);
    return Column(
      children: [
        SizedBox(
          height: heightSlider,
          width: MediaQuery.of(context).size.width / 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 15,
                      bottom: (heightSlider / countLabel).toDouble() - 3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ..._labels.reversed.map(
                        (e) => Text(
                          e.toString(),
                          style: myTextStyleFontRoboto(
                              fontSize: 22, textColor: myTwoColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: _SliderSmartFire(
                  maxValue: countLabel,
                ),
              ),
            ],
          ),
        ),
      ],
    );
    ;
  }
}

class _SliderSmartFire extends StatefulWidget {
  const _SliderSmartFire({
    Key? key,
    required this.maxValue,
  }) : super(key: key);
  final int maxValue;

  @override
  State<_SliderSmartFire> createState() => _SliderSmartFireState();
}

class _SliderSmartFireState extends State<_SliderSmartFire> {
  double? valueChange;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: const SliderThemeData().copyWith(
        trackHeight: 15,
        thumbShape: const RoundSliderThumbShape(
          enabledThumbRadius: 20,
          pressedElevation: 20,
        ),
        overlayShape: const RoundSliderThumbShape(
          enabledThumbRadius: 10,
          elevation: 10,
        ),
        activeTickMarkColor: Colors.transparent,
        inactiveTickMarkColor: Colors.grey,
        thumbColor: myTreeColor,
        //Color.fromRGBO(113, 109, 109, 1),
        inactiveTrackColor: myTreeColor,
        // Color.fromRGBO(189, 189, 189, 1),
        trackShape: GradientRectSliderTrackShape(
          gradient: gradientForSlider,
          darkenInactive: true,
        ),
      ),
      child: BlocBuilder<ConnectedDirectlyBloc, ConnectedDirectlyState>(
        buildWhen: (prev, cur) =>
            cur.fireplaceData!.sliderValue != prev.fireplaceData!.sliderValue,
        builder: (context, state) {
          return RotatedBox(
            quarterTurns: 3,
            child: Slider(
              divisions: widget.maxValue.toInt(),
              min: 0.0,
              max: widget.maxValue.toDouble(),
              value: valueChange ??
                  state.fireplaceData!.sliderValue.keys.first?.toDouble() ??
                  1.0,
              onChangeEnd: (value) {
                if (value >= 1) {
                  BlocProvider.of<ConnectedDirectlyBloc>(context).add(
                    ConnectedDirectlyEvent.changePowerSliderFireplace(
                      newValuePowerFireplace: value,
                    ),
                  );
                } else {
                  BlocProvider.of<ConnectedDirectlyBloc>(context).add(
                    const ConnectedDirectlyEvent.changePowerSliderFireplace(
                      newValuePowerFireplace: 1,
                    ),
                  );
                }
                Future.delayed(
                  const Duration(seconds: 1),
                  () {
                    setState(() {
                      valueChange = null;
                    });
                  },
                );
              },
              onChanged: (double value) {
                setState(() {
                  valueChange = value;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
