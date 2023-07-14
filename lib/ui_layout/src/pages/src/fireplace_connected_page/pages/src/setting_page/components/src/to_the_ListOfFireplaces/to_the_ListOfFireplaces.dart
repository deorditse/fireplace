import 'package:fireplace/main.dart';
import 'package:fireplace/ui_layout/src/pages/pages.dart';
import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:business_layout/business_layout.dart';

class ToTheListOfFireplaces extends StatelessWidget {
  const ToTheListOfFireplaces({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        BlocProvider.of<ConnectedDirectlyBloc>(context)
            .add(const ConnectedDirectlyEvent.dispose());
        Future.delayed(
          Duration.zero,
          () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => const SearchFireplacePage(),
              ),
            );
          },
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'К списку подключенных каминов',
            style: myTextStyleFontRoboto(
              fontSize: 16,
              // textColor: myColorActivity,
            ),
          ),
          const SizedBox(width: 14),
          SvgPicture.asset(
            'assets/icons/forward.svg',
            semanticsLabel: 'icon_bottom',
            color: myColorActivity,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
