import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../styles/styles.dart';

class MySkeletonPage extends StatelessWidget {
  const MySkeletonPage({super.key, required this.child, this.padding});

  final Widget child;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Container(
      decoration: myDecorationBackground,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: SafeArea(
            child: Padding(
              padding: padding ?? const EdgeInsets.symmetric(horizontal: 20.0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
