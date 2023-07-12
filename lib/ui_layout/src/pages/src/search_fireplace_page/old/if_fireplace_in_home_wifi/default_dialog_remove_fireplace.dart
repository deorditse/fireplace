// import 'package:fireplace_wifi_app/packages/ui_layout/style_app/style.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/widgets_for_all_pages/my_default_dialog.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:business_layout/business_layout.dart';
//
// defaultDialogRemoveFireplace({
//   required BuildContext context,
//   required String oldNameFireplace,
//   required int indexFireplace,
// }) {
//   myDefaultDialog(
//     height: Get.height / 5.5,
//     context: context,
//     barrierDismissible: false,
//     bodyWidget: DefaultDialogRemoveFireplace(
//       oldNameFireplace: oldNameFireplace,
//       indexFireplace: indexFireplace,
//     ),
//   );
// }
//
// class DefaultDialogRemoveFireplace extends StatelessWidget {
//   const DefaultDialogRemoveFireplace({
//     Key? key,
//     required this.oldNameFireplace,
//     required this.indexFireplace,
//   }) : super(key: key);
//   final String oldNameFireplace;
//   final int indexFireplace;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Text(
//           'Хотите удалить камин?',
//           style: myTextStyleFontRoboto(),
//         ),
//         Text(
//           oldNameFireplace,
//           style: myTextStyleFontRoboto(),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 Get.back();
//               },
//               child: Text(
//                 'Нет',
//                 style: myTextStyleFontRoboto(),
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () async {
//                 Get.back();
//                 Get.back();
//                 await FireplaceConnectionGetXController.instance
//                     .changeFireplaceData(
//                   indexFireplace: indexFireplace,
//                   isRemoveFireplace: true,
//                 );
//               },
//               child: Text(
//                 'Да',
//                 style: myTextStyleFontRoboto(),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
