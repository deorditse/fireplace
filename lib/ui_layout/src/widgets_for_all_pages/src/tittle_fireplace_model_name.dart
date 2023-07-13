import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/cli_commands.dart';

Widget myTitleModel({required String? model}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 8.0),
    child: Text(
      ("модель: ${model ?? "..."}").capitalize(),
      style: myTextStyleFontRoboto(fontSize: 14),
    ),
  );
}
