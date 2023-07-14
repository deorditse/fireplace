import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';
import 'package:models/models.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../../../../../../styles/styles.dart';
import 'widgets/text_fields_added_to_the_network_widgets.dart';

class ConnectHomeWiFiPage extends StatefulWidget {
  static const String id = '/connectHomeWiFiPage';

  const ConnectHomeWiFiPage({Key? key}) : super(key: key);

  @override
  State<ConnectHomeWiFiPage> createState() => _ConnectHomeWiFiPageState();
}

class _ConnectHomeWiFiPageState extends State<ConnectHomeWiFiPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: myDecorationBackground,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(),
                    ),
                    Expanded(
                      flex: 2,
                      child: SvgPicture.asset(
                        'assets/icons/header_logo.svg',
                        semanticsLabel: 'header_logo',
                        fit: BoxFit.contain,
                      ),
                    ),
                    Expanded(
                      child: buttonWithBack(context),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const SizedBox(height: 40),
                        Text(
                          'Подключение к локальной сети:',
                          style: myTextStyleFontRoboto(fontSize: 20),
                        ),
                        const SizedBox(height: 30),
                        const Expanded(
                          child: TextFieldsAddedToTheNetworkWidgets(),
                        ),
                        if (RootConstApp.isTestMode)
                          GetDataFromLocalStorageForTest(),
                        rowWithDomain(context: context),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GetDataFromLocalStorageForTest extends StatefulWidget {
  const GetDataFromLocalStorageForTest({Key? key}) : super(key: key);

  @override
  State<GetDataFromLocalStorageForTest> createState() =>
      _GetDataFromLocalStorageForTestState();
}

class _GetDataFromLocalStorageForTestState
    extends State<GetDataFromLocalStorageForTest> {
  String text = "test";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "1 Ввести логин пароль 2 нажать сохранить 3 СОХРАНИТЬ В ПАМЯТЬ",
          style: myTextStyleFontRoboto(
            fontSize: 18,
            textColor: myTwoColor,
          ),
          textAlign: TextAlign.center,
        ),
        TextButton(
            onPressed: () {
              BlocProvider.of<RootBloc>(context)
                  .add(RootEvent.saveFireplaceInLocalStorage(
                      homeNetworkModel: HomeNetworkModel(
                customName: 'customName',
                nameHomeWifiNetwork: text,
                nameFromHardListWifiName: 'nameFromHardListWifiName',
                ipAddressFireplace: 'ipAddressFireplace',
                macAddressInLocalWiFi: 'macAddressInLocalWiFi',
                password: 'password',
              )));
            },
            child: Text("СОХРАНИТЬ В ПАМЯТЬ")),
        TextField(
          decoration: myStyleTextField(
            context,
          ),
          onChanged: (ccc) => setState(() {
            text = ccc;
          }),
          style: myTextStyleFontSarpanch(),
        ),
        TextButton(
          onPressed: () async {
            BlocProvider.of<RootBloc>(context)
                .add(RootEvent.viewDataInLocalStorage(keyWifi: text));
          },
          child: const Text("посмотреть что в памяти по ключу"),
        ),
      ],
    );
  }
}
