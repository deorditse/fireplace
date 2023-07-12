// import 'package:business_layout/business_layout.dart';
// import 'package:flutter/material.dart';
// import 'if_fireplace_in_home_wifi/row_with_name_and_title_fireplace.dart';
//
// class FindDeviceScreenWidget extends StatelessWidget {
//   const FindDeviceScreenWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: MediaQuery.of(context).size.width,
//       child: MyContainerAlert(
//         height: MediaQuery.of(context).size.height / 3.5,
//         child: GetBuilder<FireplaceConnectionGetXController>(
//           builder: (controllerApp) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   _rowWithTitle(context: context),
//                   if (controllerApp.isFireplaceDetectedInDatabase == null)
//                     Expanded(
//                       child: _searchConnectedFireplaces(context: context),
//                     )
//                   else
//
//                     ///первый экран
//                     controllerApp.isFireplaceDetectedInDatabase!
//                         ? Expanded(
//                             child: Column(
//                               children: [
//                                 ///если камин подключен через точку доступа (save in local storage) в сети wifi
//                                 if (controllerApp.homeLocalNetworksData !=
//                                         null &&
//                                     controllerApp
//                                         .homeLocalNetworksData!.isNotEmpty)
//                                   Expanded(
//                                     child:
//                                         _listMapWithWifiNameHomeNetworkAndNameFromListWifiName(
//                                       context: context,
//                                     ),
//                                   )
//                                 else
//
//                                   ///если камин подключен напрямую
//                                   RowWithNameAndTitleFireplace(
//                                     indexFireplace: 0,
//                                     titleModel: controllerApp
//                                             .wifiName?.capitalizeFirst ??
//                                         "Smart Fire",
//                                     voidCallback: () {
//                                       Get.to(
//                                         const FireplacePage(),
//                                         preventDuplicates: false,
//                                       );
//                                     },
//                                   ),
//                               ],
//                             ),
//                           )
//                         : Padding(
//                             padding: const EdgeInsets.only(top: 18.0),
//                             child: Column(
//                               children: [
//                                 Text(
//                                   "Ошибка подключения, посмотрите интсрукцию\n",
//                                   style: myTextStyleFontRoboto(
//                                     textColor: myTwoColor,
//                                   ),
//                                   textAlign: TextAlign.center,
//                                 ),
//                                 GestureDetector(
//                                   onTap: () {
//                                     print('todo url instruction');
//                                     Get.toNamed(InstructionPage.id);
//                                   },
//                                   child: Text(
//                                     "ИНСТРУКЦИЯ",
//                                     style: myTextStyleFontRoboto(),
//                                     textAlign: TextAlign.center,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
//
//   Widget _searchConnectedFireplaces({required BuildContext context}) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         FittedBox(
//           child: CircularProgressIndicator(
//             color: myColorActivity,
//           ),
//         ),
//         SizedBox(
//           height: 10,
//         ),
//         Flexible(
//           child: Text(
//             'Поиск подключенных каминов',
//             style: myTextStyleFontRoboto(),
//             textAlign: TextAlign.center,
//           ),
//         ),
//       ],
//     );
//   }
//
//   ///если камин добавлен в домашнюю сеть
//   Widget _listMapWithWifiNameHomeNetworkAndNameFromListWifiName(
//       {required BuildContext context}) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: GetBuilder<FireplaceConnectionGetXController>(
//         builder: (controllerApp) {
//           final boxHomeNetworkModel = controllerApp.homeLocalNetworksData!;
//           return ListView.builder(
//             shrinkWrap: true,
//             primary: false,
//             padding: EdgeInsets.zero,
//             itemCount: boxHomeNetworkModel.values.length,
//             itemBuilder: (context, index) {
//               HomeNetworkModel boxConnectHomelWifi =
//                   boxHomeNetworkModel.values.toList()[index];
//
//               final fireplace = boxHomeNetworkModel.values.toList()[index];
//
//               return RowWithNameAndTitleFireplace(
//                 indexFireplace: index,
//                 titleModel: controllerApp.fireplaceData?.model ??
//                     fireplace.nameFromHardListWifiName.toString().toLowerCase(),
//                 boxConnectHomelWifi: boxConnectHomelWifi,
//                 voidCallback: () async {
//                   ///начинаем поиск с подменным wifi из бащы
//
//                   Get.to(
//                     FireplacePage(indexFireplaceFromNetworkLocalStorage: index),
//                     preventDuplicates: false,
//                   );
//                 },
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
//
//   _rowWithTitle({required BuildContext context}) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           'Модель:',
//           style: myTextStyleFontRoboto(),
//           textAlign: TextAlign.center,
//         ),
//         Text(
//           'Название',
//           style: myTextStyleFontRoboto(),
//           textAlign: TextAlign.center,
//         ),
//       ],
//     );
//   }
// }
