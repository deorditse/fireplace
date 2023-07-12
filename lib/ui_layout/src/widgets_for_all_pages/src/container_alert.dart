import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class MyContainerAlert extends StatelessWidget {
  MyContainerAlert({
    Key? key,
    this.borderColor,
    this.message,
    this.height,
    this.width,
    this.child,
  }) : super(key: key);
  double? height;
  double? width;
  Color? borderColor;
  String? message;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    Color _mainColor = borderColor ?? myTwoColor;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: height ?? MediaQuery.of(context).size.height / 10,
          width: width ?? MediaQuery.of(context).size.width,
          decoration: myBoxDecorationBorder(
              context: context,
              colorBorder: borderColor ?? myTwoColor), // myTwoColor),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: (message != null)
                  ? Text(
                      message!,
                      style: myTextStyleFontRoboto(
                        fontSize: 24,
                        textColor: _mainColor,
                      ),
                      textAlign: TextAlign.center,
                    )
                  : child!,
            ),
          ),
        ),
      ],
    );
  }
}
