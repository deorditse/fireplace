// import 'package:business_layout/business_layout.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/all_pages/fireplace_pages/fireplace_page.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/style_app/style.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
//
// import 'package:models/models.dart';
// import 'default_dialog_edit_nameFireplace.dart';
//
// class RowWithNameAndTitleFireplace extends StatelessWidget {
//   const RowWithNameAndTitleFireplace({
//     Key? key,
//     this.boxConnectHomelWifi,
//     required this.titleModel,
//     required this.voidCallback,
//     required this.indexFireplace,
//   }) : super(key: key);
//   final String titleModel;
//   final VoidCallback voidCallback;
//   final HomeNetworkModel? boxConnectHomelWifi;
//   final int indexFireplace;
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Flexible(
//           flex: 2,
//           child: TextButton(
//             style: ButtonStyle(
//                 padding: MaterialStateProperty.all(EdgeInsets.zero)),
//             onPressed: voidCallback,
//             child: Text(
//               titleModel,
//               overflow: TextOverflow.ellipsis,
//               style: myTextStyleFontRoboto(),
//             ),
//           ),
//         ),
//         const SizedBox(width: 4),
//         SvgPicture.asset(
//           'assets/icons/check.svg',
//           semanticsLabel: 'check',
//           fit: BoxFit.contain,
//           color: myTwoColor,
//         ),
//         const SizedBox(width: 4),
//         if (boxConnectHomelWifi != null)
//           Expanded(
//             // flex: 2,
//             child: TextButton(
//               style: ButtonStyle(
//                   padding: MaterialStateProperty.all(EdgeInsets.zero)),
//               onPressed: () {
//                 defaultDialogEditNameFireplace(
//                   context: context,
//                   oldNameFireplace: boxConnectHomelWifi!.customName,
//                   indexFireplace: indexFireplace,
//                 );
//               },
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // SizedBox(width: 4),
//                         Text(
//                           boxConnectHomelWifi!.customName,
//                           style: myTextStyleFontRoboto(),
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         // SizedBox(width: 4),
//                         Divider(
//                           height: 1,
//                           thickness: 1,
//                           color: myTwoColor,
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(width: 4),
//                   SvgPicture.asset(
//                     'assets/icons/marker.svg',
//                     semanticsLabel: 'marker',
//                     fit: BoxFit.contain,
//                     // color: myTwoColor,
//                   ),
//                 ],
//               ),
//             ),
//           )
//         else
//           const Expanded(child: SizedBox()),
//       ],
//     );
//   }
// }
