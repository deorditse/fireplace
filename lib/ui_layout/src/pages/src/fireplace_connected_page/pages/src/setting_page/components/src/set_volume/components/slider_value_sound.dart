import 'package:fireplace/ui_layout/src/pages/src/fireplace_connected_page/pages/src/setting_page/components/src/set_volume/slider_theme_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../../../../../styles/styles.dart';
import 'package:business_layout/business_layout.dart';

class SliderValueSound extends StatefulWidget {
  const SliderValueSound({super.key});

  @override
  State<SliderValueSound> createState() => _SliderValueSoundState();
}

class _SliderValueSoundState extends State<SliderValueSound> {
  double? valueChangeClickSound;

  @override
  Widget build(BuildContext context) {
    final double sliderValueCracklingSoundEffectAndLevelValue =
        BlocProvider.of<ConnectedDirectlyBloc>(context, listen: true)
                .state
                .fireplaceData!
                .sliderValueVoicePromptsAndLevelValue
                ?.values
                .first
                .toDouble() ??
            10;

    return Padding(
      padding: EdgeInsets.only(top: mySizedHeightBetweenAlert),
      child: MySliderTheme(
        child: Slider(
          label:
              '${valueChangeClickSound?.toInt() ?? sliderValueCracklingSoundEffectAndLevelValue}',
          divisions: 19,
          min: 10.0,
          max: 30,
          value: valueChangeClickSound ??
              sliderValueCracklingSoundEffectAndLevelValue,
          onChangeEnd: (value) {
            BlocProvider.of<SettingBloc>(context).add(
                SettingEvent.changeValueCracklingSoundEffect(
                    value: value.toInt()));

            Future.delayed(
              const Duration(seconds: 1),
              () {
                setState(() {
                  valueChangeClickSound = null;
                });
              },
            );
          },
          onChanged: (double value) {
            setState(() {
              valueChangeClickSound = value;
            });
          },
        ),
      ),
    );
  }
}
