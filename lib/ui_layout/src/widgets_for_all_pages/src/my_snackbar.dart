import 'package:models/models.dart';
import 'package:fireplace/ui_layout/src/wrappers/wrappers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../styles/styles.dart';

void myBottomSnackBar(
  BuildContext context, {
  required String content,
  Duration? duration,
  String? iconLabel,
  bool isErrorBackground = false,
}) {
  Color green = const Color.fromRGBO(36, 178, 62, 0.2);
  Color red = const Color.fromRGBO(255, 46, 67, 0.2);
  final SnackBar snackBar = SnackBar(
    padding: const EdgeInsets.only(bottom: 47),
    backgroundColor: Colors.transparent,
    elevation: 0,
    content: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          constraints: const BoxConstraints(minWidth: 400),
          width: AdaptiveWidget.isMobile(context)
              ? MediaQuery.of(context).size.width
              : null,
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(11, 21, 46, 0.24), //New
                blurRadius: 10.0,
                offset: Offset(0, 4),
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: const Color.fromRGBO(38, 38, 38, 0.15),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 32,
                    width: 32,
                    child: Center(
                      child: Icon(
                        isErrorBackground
                            ? Icons.error_outline
                            : Icons.info_outlined,
                        color: isErrorBackground ? red.withOpacity(1) : null,
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Text(
                    content,
                    style: myTextStyleFontRoboto(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(width: 14),
                ],
              ),
              IconButton(
                  onPressed: () {
                    RootConstApp.snackBarKey.currentState
                        ?.hideCurrentSnackBar();
                  },
                  icon: Icon(Icons.close)),
            ],
          ),
        ),
        if (!AdaptiveWidget.isMobile(context)) const SizedBox(width: 20),
      ],
    ),
    duration: duration ?? const Duration(seconds: 5),
  );
  RootConstApp.snackBarKey
    ..currentState?.hideCurrentSnackBar()
    ..currentState?.showSnackBar(snackBar);
}
