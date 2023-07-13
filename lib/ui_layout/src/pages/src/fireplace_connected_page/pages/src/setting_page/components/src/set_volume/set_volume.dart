// import 'package:business_layout/business_layout.dart';
// import 'package:fireplace/ui_layout/src/styles/styles.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class SetVolumeWidget extends StatefulWidget {
//   const SetVolumeWidget({Key? key}) : super(key: key);
//
//   @override
//   State<SetVolumeWidget> createState() => _SetVolumeWidgetState();
// }
//
// class _SetVolumeWidgetState extends State<SetVolumeWidget> {
//   double? valueChangeClickSound;
//
//   @override
//   Widget build(BuildContext context) {
//     final _sliderValueCracklingSoundEffect = (controllerApp.fireplaceData!
//             .sliderValueCracklingSoundEffectAndLevelValue?.values.first
//             .toDouble() ??
//         10);
//     return BlocBuilder<SettingBloc, SettingState>(
//       builder: (context, state) => Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Настройки звука:',
//             style: myTextStyleFontRoboto(
//               fontSize: 16,
//               // textColor: myColorActivity,
//             ),
//           ),
//           SizedBox(height: mySizedHeightBetweenAlert),
//
//           ///подключение опций
//           //эта опция есть во всех каминах по умолчанию
//           // _optionButtonClickSound(),
//           //опция Зв. эффект потрескивание дров
//           if (state.fireplaceData.sliderValueCracklingSoundEffectAndLevelValue
//                   ?.keys.first !=
//               null)
//             Padding(
//               padding: EdgeInsets.only(top: mySizedHeightBetweenAlert),
//               child: _OptionSoundFirewoodCrackleEffect(),
//             ),
//           //опция Голосовые подсказки
//           if (state.fireplaceData.sliderValueVoicePromptsAndLevelValue?.keys
//                   .first !=
//               null)
//             Padding(
//               padding: EdgeInsets.only(top: mySizedHeightBetweenAlert),
//               child: _OptionVoicePrompts(),
//             ),
//
//           if ((state.fireplaceData.sliderValueVoicePromptsAndLevelValue?.keys
//                           .first !=
//                       null &&
//                   state.fireplaceData.sliderValueVoicePromptsAndLevelValue!
//                       .keys.first) ||
//               (state.fireplaceData.sliderValueCracklingSoundEffectAndLevelValue
//                           ?.keys.first !=
//                       null &&
//                   state
//                       .fireplaceData
//                       .sliderValueCracklingSoundEffectAndLevelValue!
//                       .keys
//                       .first))
//             Padding(
//               padding: EdgeInsets.only(top: mySizedHeightBetweenAlert),
//               child: MySliderTheme(
//                 child: Slider(
//                   label:
//                       '${valueChangeClickSound?.toInt() ?? _sliderValueCracklingSoundEffect.toInt()}',
//                   divisions: 19,
//                   min: 10.0,
//                   max: 30,
//                   value:
//                       valueChangeClickSound ?? _sliderValueCracklingSoundEffect,
//                   onChangeEnd: (value) {
//                     controllerApp.changeValueCracklingSoundEffect(
//                         value: value.toInt());
//
//                     Future.delayed(
//                       const Duration(seconds: 1),
//                       () {
//                         setState(() {
//                           valueChangeClickSound = null;
//                         });
//                       },
//                     );
//                   },
//                   onChanged: (double value) {
//                     setState(() {
//                       valueChangeClickSound = value;
//                     });
//                   },
//                 ),
//               ),
//             ),
//         ],
//       ),
//     );
//   }
// }
//
// class _OptionSoundFirewoodCrackleEffect extends StatefulWidget {
//   const _OptionSoundFirewoodCrackleEffect({Key? key}) : super(key: key);
//
//   @override
//   State<_OptionSoundFirewoodCrackleEffect> createState() =>
//       _OptionSoundFirewoodCrackleEffectState();
// }
//
// class _OptionSoundFirewoodCrackleEffectState
//     extends State<_OptionSoundFirewoodCrackleEffect> {
//   double? valueChangeClickSound;
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<FireplaceConnectionGetXController>(
//       builder: (controllerApp) {
//         return Column(
//           children: [
//             Row(
//               children: [
//                 FlutterSwitch(
//                   activeTextFontWeight: FontWeight.w500,
//                   inactiveTextFontWeight: FontWeight.w500,
//                   activeText: 'on',
//                   inactiveText: 'off',
//                   value: controllerApp.fireplaceData!
//                       .sliderValueCracklingSoundEffectAndLevelValue!.keys.first,
//                   activeColor: Colors.black,
//                   toggleColor: controllerApp
//                           .fireplaceData!
//                           .sliderValueCracklingSoundEffectAndLevelValue!
//                           .keys
//                           .first
//                       ? myColorActivity
//                       : myTreeColor,
//                   inactiveColor: Colors.black,
//                   switchBorder: Border.all(width: 1, color: Colors.white),
//                   borderRadius: 14.0,
//                   padding: 3,
//                   showOnOff: true,
//                   onToggle: (val) {
//                     controllerApp.changeSwitchCracklingSoundEffect();
//                   },
//                 ),
//                 SizedBox(width: mySizedHeightBetweenAlert),
//                 Expanded(
//                   child: Text(
//                     'Зв. эффект потрескивание дров',
//                     style: myTextStyleFontRoboto(textColor: myTwoColor),
//                     maxLines: 2,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
//
// class _OptionVoicePrompts extends StatefulWidget {
//   const _OptionVoicePrompts({Key? key}) : super(key: key);
//
//   @override
//   State<_OptionVoicePrompts> createState() => _OptionVoicePromptsState();
// }
//
// class _OptionVoicePromptsState extends State<_OptionVoicePrompts> {
//   double? valueChangeVoicePrompt;
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<FireplaceConnectionGetXController>(
//       builder: (controllerApp) {
//         return Column(
//           children: [
//             Row(
//               children: [
//                 FlutterSwitch(
//                   activeTextFontWeight: FontWeight.w500,
//                   inactiveTextFontWeight: FontWeight.w500,
//                   activeText: 'on',
//                   inactiveText: 'off',
//                   value: controllerApp.fireplaceData!
//                       .sliderValueVoicePromptsAndLevelValue!.keys.first,
//                   activeColor: Colors.black,
//                   toggleColor: controllerApp.fireplaceData!
//                           .sliderValueVoicePromptsAndLevelValue!.keys.first
//                       ? myColorActivity
//                       : myTreeColor,
//                   inactiveColor: Colors.black,
//                   borderRadius: 14.0,
//                   switchBorder: Border.all(width: 1, color: Colors.white),
//                   padding: 3,
//                   showOnOff: true,
//                   onToggle: (val) {
//                     controllerApp.changeSwitchVoicePrompts();
//                   },
//                 ),
//                 SizedBox(width: mySizedHeightBetweenAlert),
//                 Text(
//                   'Голосовые подсказки',
//                   style: myTextStyleFontRoboto(textColor: myTwoColor),
//                 ),
//               ],
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
