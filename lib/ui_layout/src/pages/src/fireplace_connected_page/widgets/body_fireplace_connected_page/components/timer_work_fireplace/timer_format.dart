import 'package:business_layout/business_layout.dart';
import 'package:models/models.dart';
import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'utils.dart';

class TimerFormat extends StatelessWidget {
  const TimerFormat({
    Key? key,
    this.myFontSize,
    this.padding,
    required this.fireplaceData,
  }) : super(key: key);
  final double? myFontSize;
  final double? padding;
  final FireplaceDataModel fireplaceData;

  @override
  Widget build(BuildContext context) {
    final constFontSize = myFontSize ?? 45;
    final List<String> listIfFireplaceIsPlay = TimerUtils.formatHHMMSS(
        fireplaceData.optionTimerStatusAndValue.values.first);
    final List<String> listIfFireplaceNotPlay =
        TimerUtils.formatHHMMSS(fireplaceData.ustavkaTimer);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 0),
      child: FittedBox(
        child: Row(
          children: [
            Text(
              (fireplaceData.optionTimerStatusAndValue.keys.first ?? false)
                  ? listIfFireplaceIsPlay[0]
                  : listIfFireplaceNotPlay[0],
              textAlign: TextAlign.center,
              style: myTextStyleFontSarpanch(
                fontSize: constFontSize,
                textColor: myTwoColor,
              ),
              maxLines: 1,
            ),
            Text(
              ':',
              textAlign: TextAlign.center,
              style: myTextStyleFontSarpanch(
                fontSize: constFontSize,
                textColor: myTwoColor,
              ),
            ),
            Text(
              (fireplaceData.optionTimerStatusAndValue.keys.first ?? false)
                  ? listIfFireplaceIsPlay[1]
                  : listIfFireplaceNotPlay[1],
              textAlign: TextAlign.center,
              style: myTextStyleFontSarpanch(
                fontSize: constFontSize,
                textColor: myTwoColor,
              ),
              maxLines: 1,
            ),
            Text(
              ':',
              textAlign: TextAlign.center,
              style: myTextStyleFontSarpanch(
                fontSize: constFontSize,
                textColor: myTwoColor,
              ),
            ),
            Text(
              (fireplaceData.optionTimerStatusAndValue.keys.first ?? false)
                  ? listIfFireplaceIsPlay[2]
                  : listIfFireplaceNotPlay[2],
              textAlign: TextAlign.center,
              maxLines: 1,
              style: myTextStyleFontSarpanch(
                fontSize: constFontSize,
                textColor: myTwoColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
