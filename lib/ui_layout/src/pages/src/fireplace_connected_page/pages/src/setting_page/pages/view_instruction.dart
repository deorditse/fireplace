// import 'package:business_layout/business_layout.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/style_app/style.dart';
// import 'package:fireplace_wifi_app/packages/ui_layout/widgets_for_all_pages/button_with_back.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// // Import for Android features.
// import 'package:webview_flutter_android/webview_flutter_android.dart';
//
// // Import for iOS features.
// import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';
//
// class ViewInstruction extends StatefulWidget {
//   static const String id = '/viewInstruction';
//
//   const ViewInstruction({super.key});
//
//   @override
//   State<ViewInstruction> createState() => _ViewInstructionState();
// }
//
// class _ViewInstructionState extends State<ViewInstruction> {
//   late WebViewController _controller;
//   Rx<double> _progressVal = (0.0).obs;
//   late final WebViewCookieManager cookieManager = WebViewCookieManager();
//   late String? urlLink;
//
//   Future<void> _onSetCookie() async {
//     // await cookieManager.setCookie(
//     //   WebViewCookie(
//     //     name: 'session',
//     //     value: ImplementAuthController.instance.userAuthorizedData!.accessToken,
//     //     domain: "$urlMainApiConst",
//     //     path: '/',
//     //   ),
//     // );
//     if (urlLink != null && urlLink!.isNotEmpty) {
//       await _controller.loadRequest(
//         Uri.parse("http://${urlLink!}"),
//       );
//     }
//   }
//
//   @override
//   void initState() {
//     urlLink = FireplaceConnectionGetXController
//         .instance.fireplaceData?.phoneNumberServiceCenter;
//     _controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setBackgroundColor(const Color(0x00000000))
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
//             _progressVal.value = progress.toDouble() / 100;
//           },
//           onPageStarted: (String url) {},
//           onPageFinished: (String url) {},
//           onWebResourceError: (WebResourceError error) {},
//         ),
//       );
//     _onSetCookie();
//
//     // ..loadRequest(Uri.parse('https://flutter.dev'));
//
//     // #docregion platform_features
//     if (_controller.platform is AndroidWebViewController) {
//       AndroidWebViewController.enableDebugging(true);
//       (_controller.platform as AndroidWebViewController)
//           .setMediaPlaybackRequiresUserGesture(false);
//     }
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: myDecorationBackground,
//       child: Scaffold(
//         resizeToAvoidBottomInset: false,
//         backgroundColor: Colors.transparent,
//         body: SafeArea(
//           bottom: false,
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Expanded(
//                     child: Container(),
//                   ),
//                   Expanded(
//                     flex: 2,
//                     child: SvgPicture.asset(
//                       'assets/icons/header_logo.svg',
//                       semanticsLabel: 'header_logo',
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                   Expanded(
//                     child: buttonWithBack(),
//                   ),
//                 ],
//               ),
//               SizedBox(height: mySizedHeightBetweenAlert),
//               Expanded(
//                 child: Column(
//                   children: [
//                     Obx(
//                       () => _progressVal.value != 1
//                           ? LinearProgressIndicator(
//                               value: _progressVal.value,
//                               color: myColorActivity,
//                             )
//                           : SizedBox.shrink(),
//                     ),
//                     Expanded(
//                       child: urlLink != null && urlLink!.isNotEmpty
//                           ? WebViewWidget(
//                               controller: _controller,
//                             )
//                           : Center(
//                               child: Text(
//                                 'Инструкция не найдена...',
//                                 style: myTextStyleFontRoboto(fontSize: 20),
//                               ),
//                             ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
