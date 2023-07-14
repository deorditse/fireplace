import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';
import 'package:fireplace/ui_layout/src/wrappers/src/skeleton_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/text_fields_reset_password.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return MySkeletonPage(
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
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
                  child: _buttonWithBack(context),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 50),
                    const TextFieldsResetPassword(),
                    const Expanded(child: SizedBox()),
                    rowWithDomain(context: context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buttonWithBack(context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: SvgPicture.asset(
        'assets/icons/back.svg',
        semanticsLabel: 'back',
        fit: BoxFit.contain,
      ),
    );
  }
}
