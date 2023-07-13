// import 'package:business_layout/business_layout.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/all_pages/fireplace_pages/widgets/container_alert.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/style_app/style.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/style_app/text_field_style.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
//
// import 'package:models/models.dart';
//
// class TextFieldsAddedToTheNetworkWidgets extends StatefulWidget {
//   const TextFieldsAddedToTheNetworkWidgets({super.key});
//
//   @override
//   State<TextFieldsAddedToTheNetworkWidgets> createState() =>
//       _TextFieldsAddedToTheNetworkWidgetsState();
// }
//
// class _TextFieldsAddedToTheNetworkWidgetsState
//     extends State<TextFieldsAddedToTheNetworkWidgets> {
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   bool _isSuccess = false;
//
//   final TextEditingController _nameController = TextEditingController();
//
//   final TextEditingController _passwordController = TextEditingController();
//
//   Future<void> _handleSubmit(
//       {required String nameHomeWifiNetwork, required String password}) async {
//     setState(() {
//       _isSuccess = false;
//     });
//     if (_formKey.currentState!.validate()) {
//       setState(() {
//         _isSuccess = true;
//       });
//       FocusManager.instance.primaryFocus?.unfocus();
//
//       final _homeNetworkModel = HomeNetworkModel(
//         customName: ' - ',
//         nameHomeWifiNetwork: nameHomeWifiNetwork,
//         //_nameController.text,
//         nameFromHardListWifiName: '',
//         ipAdressFireplace: '',
//         macAdreesInLocalWiFi: '',
//         password: password, //_passwordController.text,
//       );
//
//       FireplaceConnectionGetXController.instance
//           .changeNmeHomeWifiNetwork(newModelHomeWifiNetwork: _homeNetworkModel);
//
//       if (!FireplaceConnectionGetXController.instance.isTestMode) {
//         await FireplaceConnectionGetXController.instance
//             .addHomeLocalNetworksDataOnServer(
//           SSIDNameFireplace: _nameController.text,
//           password: _passwordController.text,
//         );
//       }
//
//       _nameController.clear();
//       _passwordController.clear();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width,
//       child: Form(
//         key: _formKey,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 6.0),
//                     child: Text(
//                       'Имя сети:',
//                       style: myTextStyleFontRoboto(fontSize: 18),
//                       textAlign: TextAlign.right,
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: mySizedHeightBetweenAlert),
//                 Expanded(
//                   flex: 2,
//                   child: TextFormField(
//                     cursorColor: myColorActivity,
//                     controller: _nameController,
//                     key: const Key('fieldWiFiName'),
//                     //for testing
//                     decoration: myStyleTextField(
//                       context,
//                       // labelText: 'Имя...',
//                       // hintText: 'Ввод имени',
//                     ),
//                     validator: (value) {
//                       if (value == '') return 'Введите имя WiFi';
//                       return null;
//                     },
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: mySizedHeightBetweenAlert * 2),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   flex: 1,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 6.0),
//                     child: Text(
//                       'Пароль:',
//                       style: myTextStyleFontRoboto(fontSize: 18),
//                       textAlign: TextAlign.right,
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: mySizedHeightBetweenAlert),
//                 Expanded(
//                   flex: 2,
//                   child: TextFormField(
//                     cursorColor: myColorActivity,
//                     controller: _passwordController,
//                     key: const Key('fieldPassword'),
//                     validator: (value) {
//                       if (value == '') return 'Введите пароль';
//                       if (value!.split('').length < 8 ||
//                           value.split('').length > 20) {
//                         return 'Некорректный пароль';
//                       }
//                       return null;
//                     },
//                     decoration: myStyleTextField(
//                       context,
//                       // labelText: 'пароль',
//                       // hintText: '*****',
//                       // helperText: 'Поле для поиска заметок',
//                     ),
//                     keyboardType: TextInputType.text,
//                     // obscuringCharacter: '*',
//                     // inputFormatters: <TextInputFormatter>[
//                     //   FilteringTextInputFormatter.singleLineFormatter,
//                     // ],
//                     obscureText: true,
//                   ),
//                 ),
//               ],
//             ),
//             if (FireplaceConnectionGetXController.instance.isTestMode)
//               const TestApp(),
//             SizedBox(height: mySizedHeightBetweenAlert * 2),
//             Row(
//               children: [
//                 Expanded(
//                   child: Text(
//                     'Сохранить:',
//                     style: myTextStyleFontRoboto(fontSize: 18),
//                     textAlign: TextAlign.right,
//                   ),
//                 ),
//                 SizedBox(width: mySizedHeightBetweenAlert),
//                 Expanded(
//                   flex: 2,
//                   child: Row(
//                     children: [
//                       SizedBox(
//                         width: Get.width / 6,
//                         child: ElevatedButton(
//                           style: ButtonStyle(
//                             backgroundColor:
//                                 MaterialStatePropertyAll(myTwoColor),
//                           ),
//                           onPressed: () async => await _handleSubmit(
//                             nameHomeWifiNetwork: _nameController.text,
//                             password: _passwordController.text,
//                           ),
//                           child: SvgPicture.asset(
//                             'assets/icons/check.svg',
//                             semanticsLabel: 'check',
//                             color: _isSuccess ? myColorActivity : null,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//             Expanded(
//               child: _isSuccess
//                   ? Padding(
//                       padding: const EdgeInsets.only(top: 30),
//                       child: _fireplaceAddedToTheNetwork(),
//                     )
//                   : const SizedBox(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   _fireplaceAddedToTheNetwork() {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width,
//       child: MyContainerAlert(
//         height: Get.height / 4,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: GetBuilder<FireplaceConnectionGetXController>(
//             builder: (controllerApp) {
//               if (controllerApp.fireplaceData?.macAdreesInLocalWiFi != null &&
//                   controllerApp.fireplaceData?.ipAdreesInLocalWiFi != null) {
//                 return SingleChildScrollView(
//                   child: Text(
//                     'Камин добавлен в сеть,\n\nвыйдите из приложения,\n\nподключителсь к домашней сети\n\nи зайдите в приложение заново.',
//                     style: myTextStyleFontRoboto(
//                       fontSize: 18,
//                       textColor: myTwoColor,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 );
//                 // return
//               } else {
//                 return SingleChildScrollView(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       CircularProgressIndicator(color: myColorActivity),
//                       Text(
//                         'Камин добавляется в домашнюю сеть, ждите',
//                         style: myTextStyleFontRoboto(
//                           fontSize: 18,
//                           textColor: myTwoColor,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 );
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class TestApp extends StatefulWidget {
//   const TestApp({Key? key}) : super(key: key);
//
//   @override
//   State<TestApp> createState() => _TestAppState();
// }
//
// class _TestAppState extends State<TestApp> {
//   String text = "test";
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           "1 Ввести логин пароль 2 нажать сохранить 3 СОХРАНИТЬ В ПАМЯТЬ",
//           style: myTextStyleFontRoboto(
//             fontSize: 18,
//             textColor: myTwoColor,
//           ),
//           textAlign: TextAlign.center,
//         ),
//         TextButton(
//             onPressed: () {
//               FireplaceConnectionGetXController.instance
//                   .addDataINLocalStorage();
//             },
//             child: Text("СОХРАНИТЬ В ПАМЯТЬ")),
//         TextField(
//           decoration: myStyleTextField(
//             context,
//           ),
//           onChanged: (ccc) => setState(() {
//             text = ccc;
//           }),
//           style: myTextStyleFontSarpanch(),
//         ),
//         TextButton(
//           onPressed: () async {
//             print(text);
//             await FireplaceConnectionGetXController.instance
//                 .viewDataINLocalStorage(
//               key: text.isNotEmpty ? text : null,
//             );
//           },
//           child: const Text("посмотреть что в памяти по ключу"),
//         ),
//       ],
//     );
//   }
// }
