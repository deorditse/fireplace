import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';

class OptionVoicePrompts extends StatelessWidget {
  const OptionVoicePrompts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSliderValueVoicePrompts =
        BlocProvider.of<ConnectedDirectlyBloc>(context, listen: true)
            .state
            .fireplaceData!
            .sliderValueVoicePromptsAndLevelValue!
            .keys
            .first;
    return Padding(
      padding: EdgeInsets.only(top: mySizedHeightBetweenAlert),
      child: Column(
        children: [
          Row(
            children: [
              FlutterSwitch(
                activeTextFontWeight: FontWeight.w500,
                inactiveTextFontWeight: FontWeight.w500,
                activeText: 'on',
                inactiveText: 'off',
                value: isSliderValueVoicePrompts,
                activeColor: Colors.black,
                toggleColor:
                    isSliderValueVoicePrompts ? myColorActivity : myTreeColor,
                inactiveColor: Colors.black,
                borderRadius: 14.0,
                switchBorder: Border.all(width: 1, color: Colors.white),
                padding: 3,
                showOnOff: true,
                onToggle: (val) {
                  BlocProvider.of<SettingBloc>(context).add(
                    SettingEvent.changeSwitchVoicePrompts(isVoicePrompts: !val),
                  );
                },
              ),
              SizedBox(width: mySizedHeightBetweenAlert),
              Text(
                'Голосовые подсказки',
                style: myTextStyleFontRoboto(textColor: myTwoColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
