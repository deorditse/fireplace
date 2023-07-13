// import 'package:business_layout/business_layout.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/all_pages/fireplace_pages/fireplace_page.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/all_pages/fireplace_pages/pages/setting_page/pages/connect_homeWiFi_page/widgets/text_fields_added_to_the_network_widgets.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/style_app/style.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/widgets_for_all_pages/rowWithDomain.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
//
// import 'widgets/text_fields_reset_password.dart';
//
// class ResetPasswordPage extends StatefulWidget {
//   static const String id = '/resetPasswordPage';
//
//   const ResetPasswordPage({Key? key}) : super(key: key);
//
//   @override
//   State<ResetPasswordPage> createState() => _ResetPasswordPageState();
// }
//
// class _ResetPasswordPageState extends State<ResetPasswordPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: myDecorationBackground,
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: Colors.transparent,
//         body: SafeArea(
//           child: GestureDetector(
//             onTap: () {
//               FocusManager.instance.primaryFocus?.unfocus();
//             },
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Expanded(
//                       child: Container(),
//                     ),
//                     Expanded(
//                       flex: 2,
//                       child: SvgPicture.asset(
//                         'assets/icons/header_logo.svg',
//                         semanticsLabel: 'header_logo',
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                     Expanded(
//                       child: _buttonWithBack(),
//                     ),
//                   ],
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 20),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         SizedBox(height: 50),
//                         TextFieldsResetPassword(),
//                         Expanded(child: SizedBox()),
//                         rowWithDomain(context: context),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   _buttonWithBack() {
//     return TextButton(
//       onPressed: () {
//         Get.back();
//       },
//       child: SvgPicture.asset(
//         'assets/icons/back.svg',
//         semanticsLabel: 'back',
//         fit: BoxFit.contain,
//       ),
//     );
//   }
// }
