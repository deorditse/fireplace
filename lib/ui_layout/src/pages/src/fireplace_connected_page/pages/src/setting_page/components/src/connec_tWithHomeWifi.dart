import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConnectWithHomeWifi extends StatelessWidget {
  const ConnectWithHomeWifi({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Get.toNamed(ConnectHomeWiFiPage.id);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        // crossAxisAlignment: CrossAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Подключить в локальную сеть',
            style: myTextStyleFontRoboto(
              fontSize: 16,
              // textColor: myColorActivity,
            ),
          ),
          SizedBox(width: 14),
          SvgPicture.asset(
            'assets/icons/home_icon.svg',
            semanticsLabel: 'home_icon.svg',
            color: myColorActivity,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
