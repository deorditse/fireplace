import 'package:flutter/material.dart';

import 'decoration_styles.dart';

///Theme Material Dark__________________________________________________________________________________________________________________________________________
ThemeData _themeDark = ThemeData.dark();
ThemeData themeDark = _themeDark.copyWith(
  //будут использоватьчя базовые темы и перезаписаны только те части которые нам необходимы
  scaffoldBackgroundColor: Colors.black,
  useMaterial3: true,
  backgroundColor: Colors.black,
  appBarTheme: const AppBarTheme(
    toolbarHeight: 40,
    color: Colors.transparent,
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle().copyWith(
      // backgroundColor: MaterialStatePropertyAll(Colors.transparent),
      // foregroundColor: MaterialStatePropertyAll(Colors.white),
      // padding: MaterialStateProperty.all(
      //   EdgeInsets.zero,
      // ),

      // backgroundColor: MaterialStatePropertyAll(Colors.green),
      foregroundColor: MaterialStatePropertyAll(myColorActivity),
      textStyle: MaterialStateProperty.all(myTextStyleFontRoboto()),
      padding: const MaterialStatePropertyAll(EdgeInsets.zero),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
      overlayColor: MaterialStatePropertyAll(myTreeColor.withOpacity(0.05)),
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle().copyWith(
      backgroundColor: MaterialStatePropertyAll(Colors.black),
      foregroundColor: MaterialStatePropertyAll(
        Colors.white,
      ),
    ),
  ),
  primaryColor: Colors.white,

  textTheme: _textDart(_themeDark.textTheme),
  //_themeLight.textTheme - какую базу будем перезаписывать
);

TextTheme _textDart(TextTheme baseTextThemeDark) {
  //base - нащ базовый стиль
  return baseTextThemeDark.copyWith(
    headline1: baseTextThemeDark.headline1?.copyWith(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
      fontFamily: 'Roboto',
    ),
    headline2: baseTextThemeDark.headline2?.copyWith(
      color: Colors.white,
      fontSize: 16,
      fontFamily: 'Roboto',
    ),
    headline3: baseTextThemeDark.headline3?.copyWith(
      color: Colors.white,
      fontSize: 14,
      fontFamily: 'Roboto',
    ),
    bodyText1: baseTextThemeDark.bodyText1?.copyWith(
      color: Colors.greenAccent,
    ),
    bodyText2: baseTextThemeDark.bodyText2?.copyWith(
      color: Colors.white, //для дефолтного текста
    ),
  );
}
