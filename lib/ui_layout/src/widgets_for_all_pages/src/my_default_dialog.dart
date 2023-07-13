import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

myDefaultDialog(
    {required context,
    required Widget bodyWidget,
    double? height,
    bool barrierDismissible = true}) {
  showDialog(
    context: context,
    builder: (contextForClose) {
      return DefaultDialog(bodyWidget: bodyWidget, height: height);
    },
  );
}

class DefaultDialog extends StatelessWidget {
  const DefaultDialog(
      {Key? key, required this.bodyWidget, required this.height})
      : super(key: key);
  final Widget bodyWidget;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: myDefaultDialogBackground(
              context: context, colorBorder: myTwoColor),
          // height: height ?? MediaQuery.of(context).size.height / 4,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: bodyWidget,
          ),
        ),
        GestureDetector(
            onTap: () {
              // Get.back();
            },
            child: Container(
              height: 167,
              color: Colors.transparent,
            )),
      ],
    );
  }
}
