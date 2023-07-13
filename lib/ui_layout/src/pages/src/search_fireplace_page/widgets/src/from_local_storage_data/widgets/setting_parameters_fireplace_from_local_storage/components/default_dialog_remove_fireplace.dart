import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';
import 'package:flutter/material.dart';
import 'package:business_layout/business_layout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/cli_commands.dart';
import 'package:models/models.dart';

defaultDialogRemoveFireplace({
  required BuildContext context,
  required HomeNetworkModel fireplacesFromLocalStorage,
}) {
  myDefaultDialog(
    height: 400,
    context: context,
    barrierDismissible: false,
    bodyWidget: DefaultDialogRemoveFireplace(
      fireplacesFromLocalStorage: fireplacesFromLocalStorage,
    ),
  );
}

class DefaultDialogRemoveFireplace extends StatelessWidget {
  const DefaultDialogRemoveFireplace({
    Key? key,
    required this.fireplacesFromLocalStorage,
  }) : super(key: key);
  final HomeNetworkModel fireplacesFromLocalStorage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Хотите удалить камин?',
          style: myTextStyleFontRoboto(),
        ),
        Text(
          fireplacesFromLocalStorage.nameHomeWifiNetwork.capitalize(),
          style: myTextStyleFontRoboto(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Нет',
                style: myTextStyleFontRoboto(),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                BlocProvider.of<RootBloc>(context)
                    .add(RootEvent.deleteFireplaceInLocalStorage(
                  keyWifiName: fireplacesFromLocalStorage.nameHomeWifiNetwork,
                  keyMacAddress:
                      fireplacesFromLocalStorage.macAddressInLocalWiFi,
                ));

                while (Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              },
              child: Text(
                'Да',
                style: myTextStyleFontRoboto(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
