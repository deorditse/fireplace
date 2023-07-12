// import 'package:business_layout/business_layout.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/all_pages/search_fireplace_page/widgets/if_fireplace_in_home_wifi/default_dialog_remove_fireplace.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/style_app/style.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/style_app/text_field_style.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/widgets_for_all_pages/my_default_dialog.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
//
// defaultDialogEditNameFireplace({
//   required BuildContext context,
//   required String oldNameFireplace,
//   required int indexFireplace,
// }) {
//   myDefaultDialog(
//     context: context,
//     // height: Get.height / 4,
//     bodyWidget: DefaultDialogEditNameFireplace(
//       oldNameFireplace: oldNameFireplace,
//       indexFireplace: indexFireplace,
//     ),
//   );
// }
//
// class DefaultDialogEditNameFireplace extends StatelessWidget {
//   const DefaultDialogEditNameFireplace({
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
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Expanded(
//               child: FittedBox(
//                 child: Text(
//                   'Редактирование камина',
//                   style: myTextStyleFontRoboto(fontSize: 22),
//                 ),
//               ),
//             ),
//             SizedBox(width: mySizedHeightBetweenAlert),
//             GestureDetector(
//               onTap: () => Get.close(0),
//               child: SizedBox(
//                 height: 15,
//                 width: 15,
//                 child: Image.asset(
//                   'assets/icons/close.png',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         SizedBox(height: mySizedHeightBetweenAlert * 2),
//         _TextFieldsEditNameFireplace(
//           oldNameFireplace: oldNameFireplace,
//           indexFireplace: indexFireplace,
//         ),
//       ],
//     );
//   }
// }
//
// class _TextFieldsEditNameFireplace extends StatefulWidget {
//   const _TextFieldsEditNameFireplace({
//     super.key,
//     required this.oldNameFireplace,
//     required this.indexFireplace,
//   });
//
//   final String oldNameFireplace;
//   final int indexFireplace;
//
//   @override
//   State<_TextFieldsEditNameFireplace> createState() =>
//       _TextFieldsEditNameFireplaceState();
// }
//
// class _TextFieldsEditNameFireplaceState
//     extends State<_TextFieldsEditNameFireplace> {
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   bool _isSuccess = false;
//
//   late final _nameController;
//
//   @override
//   void initState() {
//     super.initState();
//     _nameController = TextEditingController(text: widget.oldNameFireplace);
//   }
//
//   Future<void> _handleSubmit({required String newCustomName}) async {
//     setState(() {
//       _isSuccess = false;
//     });
//     if (_formKey.currentState!.validate()) {
//       //сначала проверим прохождение валидации
//       setState(() {
//         _isSuccess = true;
//       });
//       await FireplaceConnectionGetXController.instance.changeFireplaceData(
//           indexFireplace: widget.indexFireplace, newCustomName: newCustomName);
//
//       Get.back();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: [
//         Form(
//           key: _formKey,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Text(
//                     'Имя:',
//                     style: myTextStyleFontRoboto(),
//                     textAlign: TextAlign.right,
//                   ),
//                   SizedBox(width: mySizedHeightBetweenAlert),
//                   Expanded(
//                     flex: 3,
//                     child: TextFormField(
//                       cursorColor: myColorActivity,
//                       controller: _nameController,
//                       key: Key('fieldWiFiName'),
//                       //for testing
//                       decoration: myStyleTextField(
//                         context,
//                         labelText: 'Имя камина',
//                         hintText: 'Ввод имени',
//                       ),
//                       validator: (value) {
//                         if (value == '') return 'Введите имя камина';
//                         return null;
//                       },
//                     ),
//                   ),
//                   SizedBox(width: mySizedHeightBetweenAlert),
//                   SizedBox(
//                     width: Get.width / 6,
//                     child: ElevatedButton(
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStatePropertyAll(myTwoColor),
//                       ),
//                       onPressed: () async => await _handleSubmit(
//                           newCustomName: _nameController.text),
//                       child: SvgPicture.asset(
//                         'assets/icons/check.svg',
//                         semanticsLabel: 'check',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         if (_isSuccess)
//           Column(
//             children: [
//               SizedBox(),
//               Center(
//                 child: Text(
//                   'данные обновлены!',
//                   style: myTextStyleFontRoboto(
//                     textColor: myTreeColor,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         TextButton(
//           onPressed: () {
//             defaultDialogRemoveFireplace(
//               context: context,
//               indexFireplace: widget.indexFireplace,
//               oldNameFireplace: widget.oldNameFireplace,
//             );
//           },
//           child: Text(
//             'Удалить камин',
//             style: myTextStyleFontRoboto(textColor: Colors.red),
//           ),
//         ),
//       ],
//     );
//   }
// }
