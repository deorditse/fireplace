import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ToTheListOfFireplaces extends StatelessWidget {
  const ToTheListOfFireplaces({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        // Get.offNamed(SearchFireplacePage.id);
        // FireplaceConnectionGetXController.instance.disposeFireplaceData();
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

