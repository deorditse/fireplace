import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/cli_commands.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:models/models.dart';

class FromLocalStorageData extends StatelessWidget {
  const FromLocalStorageData({
    super.key,
    required this.listFireplacesFromLocalStorage,
  });

  final List<HomeNetworkModel> listFireplacesFromLocalStorage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListView.builder(
        shrinkWrap: true,
        primary: true,
        padding: EdgeInsets.zero,
        itemCount: listFireplacesFromLocalStorage.length,
        itemBuilder: (context, index) {
          final HomeNetworkModel fireplace =
              listFireplacesFromLocalStorage[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 2,
                      child: Text(
                        fireplace.nameFromHardListWifiName.capitalize(),
                        overflow: TextOverflow.ellipsis,
                        style: myTextStyleFontRoboto(),
                      ),
                    ),
                    const SizedBox(width: 4),
                    SvgPicture.asset(
                      'assets/icons/check.svg',
                      semanticsLabel: 'check',
                      fit: BoxFit.contain,
                      color: myTwoColor,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
