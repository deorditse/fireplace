import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

buttonWithBack(context) {
  return TextButton(
    onPressed: () {
      Navigator.of(context).pop();
    },
    child: SvgPicture.asset(
      'assets/icons/back.svg',
      semanticsLabel: 'back',
      fit: BoxFit.contain,
    ),
  );
}
