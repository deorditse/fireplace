import 'package:business_layout/business_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../../../../styles/styles.dart';

class MySliderTheme extends StatelessWidget {
  const MySliderTheme({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: const SliderThemeData().copyWith(
        trackHeight: 5,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 14),
        overlayShape: const RoundSliderThumbShape(enabledThumbRadius: 5),
        activeTickMarkColor: Colors.transparent,
        inactiveTickMarkColor: Colors.black,
        activeTrackColor: myColorActivity,
        thumbColor: myTreeColor,
        inactiveTrackColor: const Color.fromRGBO(189, 189, 189, 1),
      ),
      child: child,
    );
  }
}
