import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

buttonWithBack() {
  return TextButton(
    onPressed: () {
      // Get.back();
    },
    child: SvgPicture.asset(
      'assets/icons/back.svg',
      semanticsLabel: 'back',
      fit: BoxFit.contain,
    ),
  );
}
