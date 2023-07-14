import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../../../../../../../styles/styles.dart';

class TextFieldsResetPassword extends StatefulWidget {
  const TextFieldsResetPassword({super.key});

  @override
  State<TextFieldsResetPassword> createState() =>
      _TextFieldsResetPasswordState();
}

class _TextFieldsResetPasswordState extends State<TextFieldsResetPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isSuccess = false;
  final TextEditingController _passwordOldController = TextEditingController();
  final TextEditingController _passwordNew1Controller = TextEditingController();
  final TextEditingController _passwordNew2Controller = TextEditingController();

  void _handleSubmit(
    BuildContext context, {
    required String oldPassword,
    required String newPassword,
    required String newPassword2,
  }) async {
    setState(() {
      _isSuccess = false;
    });
    if (_formKey.currentState!.validate()) {
      if (BlocProvider.of<ConnectedDirectlyBloc>(context)
              .state
              .fireplaceData!
              .passwordBlock ==
          int.parse(oldPassword)) {
        if (newPassword == newPassword2) {
          BlocProvider.of<SettingBloc>(context).add(
              SettingEvent.changeBlocPassword(
                  newPassword: int.parse(newPassword)));

          setState(() {
            _isSuccess = true;
          });
          _passwordOldController.clear();
          _passwordNew1Controller.clear();
          _passwordNew2Controller.clear();
          myBottomSnackBar(context, content: "Пароль обновлен!");
        } else {
          myBottomSnackBar(context, content: "Пароли не совпадают");
        }
      } else {
        myBottomSnackBar(context, content: "Старый пароль введен неверно");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                maxLength: 4,
                cursorColor: myColorActivity,
                controller: _passwordOldController,
                key: Key('_passwordOldController'),
                //for testing
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: myStyleTextField(
                  context,
                  labelText: 'Ввести текущий пароль',
                  // hintText: 'Ввод имени',
                ),
                validator: (value) {
                  if (value == null || value == '')
                    return 'Ввести текущий пароль';
                  return null;
                },
              ),
              SizedBox(height: mySizedHeightBetweenAlert * 2),
              TextFormField(
                maxLength: 4,
                cursorColor: myColorActivity,
                controller: _passwordNew1Controller,
                key: Key('_passwordNew1Controller'),
                //for testing
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: myStyleTextField(
                  context,
                  labelText: 'Ввести новый пароль',
                  // hintText: 'Ввод имени',
                ),
                validator: (value) {
                  if (value == null || value == '')
                    return 'Введите новый пароль';
                  return null;
                },
              ),
              SizedBox(height: mySizedHeightBetweenAlert * 2),
              TextFormField(
                maxLength: 4,
                cursorColor: myColorActivity,
                controller: _passwordNew2Controller,
                key: Key('_passwordNew2Controller'),
                //for testing
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
                decoration: myStyleTextField(
                  context,
                  labelText: 'Ввести новый пароль',
                  // hintText: 'Ввод имени',
                ),
                validator: (value) {
                  if (value == null || value == '') return 'Повторите пароль';
                  return null;
                },
              ),
              SizedBox(height: mySizedHeightBetweenAlert * 2),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Сохранить',
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
                            onPressed: () => _handleSubmit(
                              context,
                              oldPassword: _passwordOldController.text,
                              newPassword: _passwordNew1Controller.text,
                              newPassword2: _passwordNew2Controller.text,
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
              if (_isSuccess)
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: _fireplaceAddedToTheNetwork(
                    newPassword: _passwordNew2Controller.text,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  _fireplaceAddedToTheNetwork({required String newPassword}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: MyContainerAlert(
        height: MediaQuery.of(context).size.height / 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Ваш новый пароль:',
                style: myTextStyleFontRoboto(
                  fontSize: 18,
                  textColor: myTwoColor,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(width: mySizedHeightBetweenAlert),
              Text(
                newPassword,
                style: myTextStyleFontRoboto(
                  fontSize: 30,
                  textColor: myTwoColor,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
