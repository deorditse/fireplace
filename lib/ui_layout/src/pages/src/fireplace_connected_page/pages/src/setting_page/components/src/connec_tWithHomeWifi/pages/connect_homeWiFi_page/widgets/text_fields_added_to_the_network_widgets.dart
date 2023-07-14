import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';

import '../../../../../../../../../../../../styles/styles.dart';

class TextFieldsAddedToTheNetworkWidgets extends StatefulWidget {
  const TextFieldsAddedToTheNetworkWidgets({super.key});

  @override
  State<TextFieldsAddedToTheNetworkWidgets> createState() =>
      _TextFieldsAddedToTheNetworkWidgetsState();
}

class _TextFieldsAddedToTheNetworkWidgetsState
    extends State<TextFieldsAddedToTheNetworkWidgets> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isSuccess = false;

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  Future<void> _handleSubmit(
      {required String nameHomeWifiNetwork, required String password}) async {
    setState(() {
      _isSuccess = false;
    });
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isSuccess = true;
      });
      FocusManager.instance.primaryFocus?.unfocus();

      BlocProvider.of<RootBloc>(context)
          .add(RootEvent.addFireplaceInLocalStorage(
        nameHomeWifiNetwork: nameHomeWifiNetwork,
        password: password,
      ));

      _nameController.clear();
      _passwordController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(
                      'Имя сети:',
                      style: myTextStyleFontRoboto(fontSize: 18, ),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                SizedBox(width: mySizedHeightBetweenAlert),
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    cursorColor: myColorActivity,
                    controller: _nameController,
                    key: const Key('fieldWiFiName'),
                    //for testing
                    decoration: myStyleTextField(
                      context,
                      // labelText: 'Имя...',
                      // hintText: 'Ввод имени',
                    ),
                    validator: (value) {
                      if (value == '') return 'Введите имя WiFi';
                      return null;
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: mySizedHeightBetweenAlert * 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(
                      'Пароль:',
                      style: myTextStyleFontRoboto(fontSize: 18),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
                SizedBox(width: mySizedHeightBetweenAlert),
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    cursorColor: myColorActivity,
                    controller: _passwordController,
                    key: const Key('fieldPassword'),
                    validator: (value) {
                      if (value == '') return 'Введите пароль';
                      if (value!.split('').length < 8 ||
                          value.split('').length > 20) {
                        return 'Некорректный пароль';
                      }
                      return null;
                    },
                    decoration: myStyleTextField(
                      context,
                      // labelText: 'пароль',
                      // hintText: '*****',
                      // helperText: 'Поле для поиска заметок',
                    ),
                    keyboardType: TextInputType.text,
                    // obscuringCharacter: '*',
                    // inputFormatters: <TextInputFormatter>[
                    //   FilteringTextInputFormatter.singleLineFormatter,
                    // ],
                    obscureText: true,
                  ),
                ),
              ],
            ),
            SizedBox(height: mySizedHeightBetweenAlert * 2),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Сохранить:',
                    style: myTextStyleFontRoboto(fontSize: 18),
                    textAlign: TextAlign.right,
                  ),
                ),
                SizedBox(width: mySizedHeightBetweenAlert),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 6,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(myTwoColor),
                          ),
                          onPressed: () async => await _handleSubmit(
                            nameHomeWifiNetwork: _nameController.text,
                            password: _passwordController.text,
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/check.svg',
                            semanticsLabel: 'check',
                            color: _isSuccess ? myColorActivity : null,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: _isSuccess
                  ? Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: _fireplaceAddedToTheNetwork(),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }

  _fireplaceAddedToTheNetwork() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: MyContainerAlert(
        height: MediaQuery.of(context).size.height / 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocConsumer<ConnectedDirectlyBloc, ConnectedDirectlyState>(
              listener: (context, state) {
            if (state.fireplaceData!.macAdreesInLocalWiFi != null &&
                state.fireplaceData!.ipAdreesInLocalWiFi != null) {
              ///добавляю в локальную сеть камин
              BlocProvider.of<RootBloc>(context).add(
                RootEvent.saveFireplaceInLocalStorage(
                    homeNetworkModel: BlocProvider.of<RootBloc>(context)
                        .state
                        .homeNetworkDataToLocalStorage!
                        .copyWith(
                          macAddressInLocalWiFi:
                              state.fireplaceData!.macAdreesInLocalWiFi!,
                          ipAddressFireplace:
                              state.fireplaceData!.ipAdreesInLocalWiFi!,
                        )),
              );
            }
          }, builder: (context, state) {
            if (state.fireplaceData!.macAdreesInLocalWiFi != null &&
                state.fireplaceData!.ipAdreesInLocalWiFi != null) {
              return SingleChildScrollView(
                child: Text(
                  'Камин добавлен в сеть,\n\nвыйдите из при¬ложения,\n\nподключителсь к домашней сети\n\nи зайдите в приложение заново.',
                  style: myTextStyleFontRoboto(
                    fontSize: 18,
                    textColor: myTwoColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
              // return
            } else {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(color: myColorActivity),
                    Text(
                      'Камин добавляется в домашнюю сеть, ждите',
                      style: myTextStyleFontRoboto(
                        fontSize: 18,
                        textColor: myTwoColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}
