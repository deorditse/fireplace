import 'package:business_layout/business_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import '../../../../../../../../../styles/styles.dart';
import 'pages/reset_password.dart/reset_password.dart';

class PasswordUser extends StatelessWidget {
  const PasswordUser({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: BlocProvider.of<ConnectedDirectlyBloc>(context),
              child: const ResetPasswordPage(),
            ),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Настройки пароля блокировки:',
            style: myTextStyleFontRoboto(),
          ),
          SizedBox(width: 14),
          SvgPicture.asset(
            'assets/icons/key.svg',
            semanticsLabel: 'instruction.svg',
            color: myColorActivity,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
