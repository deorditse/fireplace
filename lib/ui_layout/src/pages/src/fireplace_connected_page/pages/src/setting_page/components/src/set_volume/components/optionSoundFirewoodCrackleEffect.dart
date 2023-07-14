import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_switch/flutter_switch.dart';

class OptionSoundFirewoodCrackleEffect extends StatelessWidget {
  const OptionSoundFirewoodCrackleEffect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isSliderValueCrack =
        BlocProvider.of<ConnectedDirectlyBloc>(context, listen: true)
            .state
            .fireplaceData!
            .sliderValueCracklingSoundEffectAndLevelValue!
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
                value: isSliderValueCrack,
                activeColor: Colors.black,
                toggleColor: isSliderValueCrack ? myColorActivity : myTreeColor,
                inactiveColor: Colors.black,
                switchBorder: Border.all(width: 1, color: Colors.white),
                borderRadius: 14.0,
                padding: 3,
                showOnOff: true,
                onToggle: (val) {
                  BlocProvider.of<SettingBloc>(context).add(
                    SettingEvent.changeSwitchCracklingSoundEffect(
                      isCrack: !val,
                    ),
                  );
                },
              ),
              SizedBox(width: mySizedHeightBetweenAlert),
              Expanded(
                child: Text(
                  'Зв. эффект потрескивание дров',
                  style: myTextStyleFontRoboto(textColor: myTwoColor),
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
