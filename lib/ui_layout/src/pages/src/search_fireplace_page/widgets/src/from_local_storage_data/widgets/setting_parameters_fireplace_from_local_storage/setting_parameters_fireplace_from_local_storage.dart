import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/cli_commands.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import 'components/default_dialog_edit_nameFireplace.dart';

class SettingParametersFireplaceFromLocalStorage extends StatelessWidget {
  const SettingParametersFireplaceFromLocalStorage({
    super.key,
    required this.fireplacesFromLocalStorage,
  });

  final HomeNetworkModel fireplacesFromLocalStorage;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // flex: 2,
      child: TextButton(
        style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero)),
        onPressed: () {
          defaultDialogEditNameFireplace(
            context: context,
            fireplacesFromLocalStorage: fireplacesFromLocalStorage,
          );
        },
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // SizedBox(width: 4),
                  Text(
                    fireplacesFromLocalStorage.customName.capitalize(),
                    style: myTextStyleFontRoboto(),
                    overflow: TextOverflow.ellipsis,
                  ),
                  // SizedBox(width: 4),
                  Divider(
                    height: 1,
                    thickness: 1,
                    color: myTwoColor,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 4),
            SvgPicture.asset(
              'assets/icons/marker.svg',
              semanticsLabel: 'marker',
              fit: BoxFit.contain,
              // color: myTwoColor,
            ),
          ],
        ),
      ),
    );
  }
}
