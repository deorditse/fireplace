import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';
import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class WifiOffScreenPage extends StatelessWidget {
  static const String id = '/wifiOffScreenPage';

  const WifiOffScreenPage({Key? key, this.state}) : super(key: key);

  final ConnectivityResult? state;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeDark,
      home: Scaffold(
        body: Container(
          decoration: myDecorationBackground,
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Icon(
                            Icons.wifi_off,
                            size: 200,
                            color: Colors.white54,
                          ),
                          FittedBox(
                            child: Text(
                              'Для подключения к камину включите Wi-Fi',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    fontFamily: 'Roboto',
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  FittedBox(
                    child: rowWithDomain(context: context),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
