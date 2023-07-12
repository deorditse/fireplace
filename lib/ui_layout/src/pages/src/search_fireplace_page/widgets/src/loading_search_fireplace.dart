import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';

class LoadingSearchFireplace extends StatelessWidget {
  const LoadingSearchFireplace({super.key});

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
        const SizedBox(height: 20),
        Flexible(
          child: Text(
            'Поиск подключенных каминов',
            style: myTextStyleFontRoboto(),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
