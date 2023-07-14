import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'pages/view_instruction_page.dart';

class InstructionUser extends StatelessWidget {
  const InstructionUser({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => BlocProvider.value(
              value: BlocProvider.of<ConnectedDirectlyBloc>(context),
              child: const ViewInstruction(),
            ),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Инструкция пользователя:',
            style: myTextStyleFontRoboto(),
          ),
          const SizedBox(width: 14),
          SvgPicture.asset(
            'assets/icons/instruction.svg',
            semanticsLabel: 'instruction.svg',
            color: myColorActivity,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
