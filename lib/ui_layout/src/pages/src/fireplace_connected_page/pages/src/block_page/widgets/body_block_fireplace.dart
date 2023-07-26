import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/pages/src/fireplace_connected_page/widgets/body_fireplace_connected_page/components/timer_work_fireplace/timer_work_fireplace.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../styles/styles.dart';

class BodyBlockFireplace extends StatelessWidget {
  const BodyBlockFireplace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Column(
          children: [
            _blockFirePlace(context),
            SizedBox(height: mySizedHeightBetweenAlert),
            timeWorkFireplace(context),
            const SizedBox(height: 20),
            const Expanded(child: _TextField()),
          ],
        ),
      ),
    );
  }

  Widget _blockFirePlace(context) {
    return MyContainerAlert(
      borderColor: myColorActivity,
      child: Text(
        'камин заблокирован',
        style: myTextStyleFontRoboto(fontSize: 24, textColor: myColorActivity),
      ),
    );
  }
}

class _TextField extends StatefulWidget {
  const _TextField({super.key});

  @override
  State<_TextField> createState() => _TextFieldState();
}

class _TextFieldState extends State<_TextField> {
  bool isValidate = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            'введите пароль',
            style: myTextStyleFontRoboto(
              fontSize: 24,
              textColor: myTwoColor,
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(
                // height: 40,
                width: MediaQuery.of(context).size.width / 2.5,
                child: _myTextField(context),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: SvgPicture.asset(
                  'assets/icons/mainBlock.svg',
                  semanticsLabel: 'icon_bottom',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _myTextField(BuildContext context) {
    return BlocBuilder<ConnectedDirectlyBloc, ConnectedDirectlyState>(
      buildWhen: (prev, cur) =>
          cur.fireplaceData!.passwordBlock != prev.fireplaceData!.passwordBlock,
      builder: (context, state) => TextField(
        maxLength: 4,
        onChanged: (password) {
          if (password.length >= 4) {
            if (password == state.fireplaceData!.passwordBlock.toString()) {
              BlocProvider.of<ConnectedDirectlyBloc>(context)
                  .add(const ConnectedDirectlyEvent.changeIsBlocButton(
                isNewBlocButton: false,
              ));
            } else {
              setState(() {
                isValidate = false;
              });
              myBottomSnackBar(
                context,
                content: "Пароль введен неверно",
              );
            }
          } else {
            if (!isValidate) {
              setState(() {
                isValidate = true;
              });
            }
          }
        },
        textAlign: TextAlign.center,
        style: myTextStyleFontRoboto(textColor: myColorActivity, fontSize: 24),
        decoration: InputDecoration(
          focusColor: myColorActivity,
          hoverColor: myColorActivity,
          filled: true,
          fillColor: isValidate ? myTwoColor : Colors.red,
          border: const UnderlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        // keyboardType: TextInputType.number,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly,
        ],
        obscureText: true,

        //
        // keyboardType: TextInputType.number,
        // inputFormatters: <TextInputFormatter>[
        //   FilteringTextInputFormatter.singleLineFormatter,
        // ],
        // obscureText: true,
        obscuringCharacter: '*',

        cursorColor: myColorActivity,
      ),
    );
  }
}
