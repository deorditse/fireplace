import 'package:models/models.dart';
import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';

class ErrorFireplace extends StatelessWidget {
  final FailModel failModel;

  const ErrorFireplace({
    super.key,
    required this.failModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(
        children: [
          Text(
            failModel.failMessage,
            style: myTextStyleFontRoboto(),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            failModel.descriptionFail,
            style: myTextStyleFontRoboto(
              textColor: myTwoColor,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Expanded(
            child: GestureDetector(
              onTap: () {
                // Get.toNamed(InstructionPage.id);
              },
              child: Text(
                "ИНСТРУКЦИЯ",
                style: myTextStyleFontRoboto(),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
