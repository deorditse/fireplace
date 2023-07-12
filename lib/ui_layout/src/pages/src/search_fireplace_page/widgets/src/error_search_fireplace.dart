import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';

class ErrorSearchFireplace extends StatelessWidget {
  const ErrorSearchFireplace({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(
        children: [
          Text(
            "Ошибка подключения, посмотрите интсрукцию\n",
            style: myTextStyleFontRoboto(
              textColor: myTwoColor,
            ),
            textAlign: TextAlign.center,
          ),
          GestureDetector(
            onTap: () {
              print('todo url instruction');
              // Get.toNamed(InstructionPage.id);
            },
            child: Text(
              "ИНСТРУКЦИЯ",
              style: myTextStyleFontRoboto(),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
