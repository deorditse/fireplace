import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:models/models.dart';
import '../../../../../../../styles/styles.dart';
import 'default_dialog_for_timer_new.dart';
import 'timer_format.dart';

Widget timeWorkFireplace(BuildContext context) {
  final FireplaceDataModel fireplaceData =
      BlocProvider.of<ConnectedDirectlyBloc>(context, listen: true)
          .state
          .fireplaceData!;
  return MyContainerAlert(
    width: MediaQuery.of(context).size.width * 0.64,
    padding: const EdgeInsets.all(8),
    // height: 80,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FittedBox(
          child: TextButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.zero)),
            onPressed: () {
              if (!(fireplaceData.isBlocButton)) {
                // defaultDialogIfDayHasNotCome(context: context);
                defaultDialogIfDayHasNotComeNew(
                  context: context,
                  fireplaceData: fireplaceData,
                );
                print('timeWorkFireplace open');
              }
            },
            child: SvgPicture.asset(
              'assets/icons/timer.svg',
              semanticsLabel: 'timer',
              color:
                  (fireplaceData.optionTimerStatusAndValue.keys.first ?? false)
                      ? myColorActivity
                      : null,
              fit: BoxFit.contain,
            ),
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 2,
                child: FittedBox(
                  child: Text(
                    'таймер',
                    style: myTextStyleFontSarpanch(
                      fontSize: 20,
                      textColor: myTwoColor,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: TimerFormat(
                  myFontSize: 20,
                  fireplaceData: fireplaceData,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
