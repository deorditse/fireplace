import 'package:flutter/material.dart';

Color myColorActivity = Color.fromRGBO(253, 98, 0, 1);
Color myTwoColor = Color.fromRGBO(196, 196, 196, 1);
Color myTreeColor = Color.fromRGBO(176, 172, 165, 1);
double mySizedHeightBetweenAlert = 10;

BoxDecoration myDefaultDialogBackground(
        {required BuildContext context, colorBorder}) =>
    myBoxDecorationBorder(
      colorBorder: colorBorder,
      context: context,
      myGradient: LinearGradient(
        begin: Alignment.centerRight,
        end: Alignment.centerLeft,
        stops: [0.0, 1.0],
        colors: [
          Color.fromRGBO(43, 42, 42, 1),
          Color.fromRGBO(35, 35, 35, 1),
        ],
        tileMode: TileMode.clamp,
      ),
    );

TextStyle myTextStyleFontSarpanch({double? fontSize, Color? textColor}) =>
    TextStyle(
      color: textColor ?? Colors.white,
      fontFamily: 'Sarpanch',
      fontSize: fontSize ?? 16,
    );

TextStyle myTextStyleFontRoboto({double? fontSize, Color? textColor}) =>
    TextStyle(
      color: textColor ?? Colors.white,
      fontFamily: 'Roboto',
      fontSize: fontSize ?? 16,
    );

BoxDecoration get myDecorationBackground => const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.centerRight,
        stops: [0.0, 0.4, 1.0],
        colors: [
          Color.fromRGBO(78, 77, 77, 1),
          Color.fromRGBO(43, 42, 42, 1),
          Color.fromRGBO(9, 7, 7, 1),
        ],
        tileMode: TileMode.clamp,
      ),
    );

BoxDecoration myBoxDecorationBorder(
    {Color? colorBorder, required BuildContext context, Gradient? myGradient}) {
  return BoxDecoration(
    border: Border.all(
      color: colorBorder ?? Theme.of(context).primaryColor,
      width: 1,
      style: BorderStyle.solid,
    ),
    borderRadius: BorderRadius.circular(10),
    gradient: myGradient ?? null,
  );
}


