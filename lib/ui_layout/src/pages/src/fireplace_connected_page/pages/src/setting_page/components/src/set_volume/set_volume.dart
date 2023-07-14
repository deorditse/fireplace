import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'components/optionSoundFirewoodCrackleEffect.dart';
import 'components/optionVoicePrompts.dart';
import 'components/slider_value_sound.dart';
import 'slider_theme_widget.dart';

class SetVolumeWidget extends StatelessWidget {
  const SetVolumeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectedDirectlyBloc, ConnectedDirectlyState>(
      buildWhen: (prev, cur) => cur.fireplaceData != prev.fireplaceData,
      builder: (context, state) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Настройки звука:',
            style: myTextStyleFontRoboto(
              fontSize: 16,
            ),
          ),
          SizedBox(height: mySizedHeightBetweenAlert),

          ///подключение опций
          //опция Зв. эффект потрескивание дров
          if (state.fireplaceData!.sliderValueCracklingSoundEffectAndLevelValue
                  ?.keys.first !=
              null)
            OptionSoundFirewoodCrackleEffect(),
          //опция Голосовые подсказки
          if (state.fireplaceData!.sliderValueVoicePromptsAndLevelValue?.keys
                  .first !=
              null)
            OptionVoicePrompts(),
          //slider регулирования громкости
          if ((state.fireplaceData!.sliderValueVoicePromptsAndLevelValue?.keys
                          .first !=
                      null &&
                  state.fireplaceData!.sliderValueVoicePromptsAndLevelValue!
                      .keys.first) ||
              (state.fireplaceData!.sliderValueCracklingSoundEffectAndLevelValue
                          ?.keys.first !=
                      null &&
                  state
                      .fireplaceData!
                      .sliderValueCracklingSoundEffectAndLevelValue!
                      .keys
                      .first))
            SliderValueSound(),
        ],
      ),
    );
  }
}
