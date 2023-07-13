

import 'package:flutter/material.dart';

import '../../../../../../styles/styles.dart';

class LoadingFireplace extends StatelessWidget {
  const LoadingFireplace({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        FittedBox(
          child: CircularProgressIndicator(
            color: myColorActivity,
          ),
        ),
        const SizedBox(height: 10),
        Flexible(
          child: Text(
            'Загрузка данных камина',
            style: myTextStyleFontRoboto(),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

