import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:business_layout/business_layout.dart';

import 'pages/connect_homeWiFi_page/connect_homeWiFi_page.dart';

class ConnectWithHomeWifi extends StatelessWidget {
  const ConnectWithHomeWifi({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: BlocProvider.of<ConnectedDirectlyBloc>(context),
              child: const ConnectHomeWiFiPage(),
            ),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Подключить в локальную сеть',
            style: myTextStyleFontRoboto(
              fontSize: 16,
              // textColor: myColorActivity,
            ),
          ),
          const SizedBox(width: 14),
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

