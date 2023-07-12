import 'package:flutter/material.dart';
import '../styles.dart';

InputDecoration myStyleTextField(BuildContext context,
    {labelText, hintText, helperText}) {
  OutlineInputBorder myOutlineInputBorder({Color? color}) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: color ?? myTwoColor, width: 1),
      );

  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(
      vertical: 8,
      horizontal: 15,
    ),

    isDense: true,
    //уменьшает высоту до минимальной

    enabledBorder: myOutlineInputBorder(),

    focusedBorder: myOutlineInputBorder(),

    errorBorder: myOutlineInputBorder(color: myColorActivity),

    focusedErrorBorder: myOutlineInputBorder(),

    errorStyle: myTextStyleFontRoboto(
      textColor: myColorActivity,
      fontSize: 14,
    ),

    hintStyle: myTextStyleFontRoboto(
      textColor: myTwoColor,
      fontSize: 14,
    ),

    labelStyle: myTextStyleFontRoboto(
      textColor: myTwoColor,
      fontSize: 14,
    ),
    floatingLabelStyle: TextStyle(fontSize: 0),
    labelText: labelText,
    //'Введите ключ команды',
    helperText: helperText,
    //'Поле для поиска заметок',
    hintText: hintText,
    //'123456',
  );
}

//этот стиль добавлен в тему
ButtonStyle myButtonStyle({Color? buttonBackground}) {
  return ButtonStyle(
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    // foregroundColor: MaterialStateProperty.all(Colors.red),
    backgroundColor:
        MaterialStateProperty.all(buttonBackground ?? myColorActivity),
  );
}
