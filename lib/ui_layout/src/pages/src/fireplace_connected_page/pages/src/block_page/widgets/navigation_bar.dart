import 'dart:io';
import 'dart:math';

import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget iconValueDescription(
    {required String iconPath, required value, required String description}) {
  return Flexible(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                iconPath,
                semanticsLabel: 'icon_bottom',
                fit: BoxFit.scaleDown,
              ),
              const SizedBox(width: 6),
              Flexible(
                flex: 10,
                child: FittedBox(
                  child: Text(
                    '$value',
                    style: myTextStyleFontSarpanch(fontSize: 27)
                        .copyWith(height: Platform.isIOS ? 1 : 0.9),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                iconPath,
                semanticsLabel: 'icon_bottom',
                fit: BoxFit.scaleDown,
                color: Colors.transparent,
              ),
              const SizedBox(width: 6),
              Flexible(
                flex: 10,
                child: Text(
                  description,
                  style: myTextStyleFontSarpanch(
                    fontSize: 15,
                    textColor: myTreeColor,
                  ).copyWith(height: 0.9),
                  overflow: TextOverflow.visible,
                  softWrap: false,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
