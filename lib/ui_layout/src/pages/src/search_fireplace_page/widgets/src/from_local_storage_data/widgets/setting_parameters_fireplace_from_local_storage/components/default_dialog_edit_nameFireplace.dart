import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import '../../../../../../../../../styles/styles.dart';
import 'default_dialog_remove_fireplace.dart';

defaultDialogEditNameFireplace({
  required BuildContext context,
  required HomeNetworkModel fireplacesFromLocalStorage,
}) {
  myDefaultDialog(
    context: context,
    bodyWidget: DefaultDialogEditNameFireplace(
      fireplacesFromLocalStorage: fireplacesFromLocalStorage,
    ),
  );
}

class DefaultDialogEditNameFireplace extends StatelessWidget {
  const DefaultDialogEditNameFireplace({
    Key? key,
    required this.fireplacesFromLocalStorage,
  }) : super(key: key);
  final HomeNetworkModel fireplacesFromLocalStorage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: FittedBox(
                child: Text(
                  'Редактирование камина',
                  style: myTextStyleFontRoboto(fontSize: 22),
                ),
              ),
            ),
            SizedBox(width: mySizedHeightBetweenAlert),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: SizedBox(
                height: 15,
                width: 15,
                child: Image.asset(
                  'assets/icons/close.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: mySizedHeightBetweenAlert * 2),
        _TextFieldsEditNameFireplace(
          fireplacesFromLocalStorage: fireplacesFromLocalStorage,
        ),
      ],
    );
  }
}

class _TextFieldsEditNameFireplace extends StatefulWidget {
  const _TextFieldsEditNameFireplace({
    required this.fireplacesFromLocalStorage,
  });

  final HomeNetworkModel fireplacesFromLocalStorage;

  @override
  State<_TextFieldsEditNameFireplace> createState() =>
      _TextFieldsEditNameFireplaceState();
}

class _TextFieldsEditNameFireplaceState
    extends State<_TextFieldsEditNameFireplace> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isSuccess = false;

  late final TextEditingController _nameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(
      text: widget.fireplacesFromLocalStorage.nameHomeWifiNetwork,
    );
  }

  Future<void> _handleSubmit({
    required String newCustomName,
    required BuildContext context,
  }) async {
    setState(() {
      _isSuccess = false;
    });
    if (_formKey.currentState!.validate()) {
      //сначала проверим прохождение валидации
      setState(() {
        _isSuccess = true;
      });

      BlocProvider.of<RootBloc>(context).add(
        RootEvent.changeFireplaceDataFromLocalStorage(
            homeNetworkModel: widget.fireplacesFromLocalStorage.copyWith(
          customName: newCustomName,
        )),
      );

      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Имя:',
                    style: myTextStyleFontRoboto(),
                    textAlign: TextAlign.right,
                  ),
                  SizedBox(width: mySizedHeightBetweenAlert),
                  Expanded(
                    flex: 3,
                    child: TextFormField(
                      cursorColor: myColorActivity,
                      controller: _nameController,
                      key: Key('fieldWiFiName'),
                      //for testing
                      decoration: myStyleTextField(
                        context,
                        labelText: 'Имя камина',
                        hintText: 'Ввод имени',
                      ),
                      validator: (value) {
                        if (value == '') return 'Введите имя камина';
                        return null;
                      },
                    ),
                  ),
                  SizedBox(width: mySizedHeightBetweenAlert),
                  SizedBox(
                    width: 40,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(myTwoColor),
                      ),
                      onPressed: () async => await _handleSubmit(
                        newCustomName: _nameController.text,
                        context: context,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/check.svg',
                        semanticsLabel: 'check',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        if (_isSuccess)
          Column(
            children: [
              SizedBox(),
              Center(
                child: Text(
                  'данные обновлены!',
                  style: myTextStyleFontRoboto(
                    textColor: myTreeColor,
                  ),
                ),
              ),
            ],
          ),
        TextButton(
          onPressed: () {
            defaultDialogRemoveFireplace(
              context: context,
              fireplacesFromLocalStorage: widget.fireplacesFromLocalStorage,
            );
          },
          child: Text(
            'Удалить камин',
            style: myTextStyleFontRoboto(textColor: Colors.red),
          ),
        ),
      ],
    );
  }
}
