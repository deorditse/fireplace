import 'dart:io';
import 'package:business_layout/business_layout.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../../styles/styles.dart';
import 'timer_format.dart';
import 'package:models/models.dart';

defaultDialogIfDayHasNotComeNew({
  required context,
  required FireplaceDataModel fireplaceData,
}) {
  myDefaultDialog(
    context: context,
    bodyWidget: _DefaultDialogIfDayHasNotCome(fireplaceData: fireplaceData),
  );
}

class _DefaultDialogIfDayHasNotCome extends StatelessWidget {
  const _DefaultDialogIfDayHasNotCome({
    Key? key,
    required this.fireplaceData,
  }) : super(key: key);
  final FireplaceDataModel fireplaceData;

  @override
  Widget build(BuildContext context) {
    bool isRunning =
        fireplaceData.optionTimerStatusAndValue.keys.first ?? false;
    return Column(
      children: [
        Stack(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(
                'assets/icons/timer.svg',
                semanticsLabel: 'timer',
                color: isRunning ? myColorActivity : null,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: Platform.isIOS ? 12.0 : 2),
                child: TextButton(
                  onPressed: () {
                    if (!isRunning) {
                      BlocProvider.of<ConnectedDirectlyBloc>(context).add(
                          const ConnectedDirectlyEvent.updateTimerFireplace(
                              isIncrement: true));
                    }
                  },
                  child: SvgPicture.asset(
                    'assets/icons/icon_up.svg',
                    semanticsLabel: 'icon_bottom',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Image.asset(
                  'assets/icons/close.png',
                  fit: BoxFit.contain,
                  scale: 2,
                ),
              ),
            ),
          ],
        ),
        TimerFormat(
          padding: 22,
          fireplaceData: fireplaceData,
        ),
        Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(
                    const Color.fromRGBO(255, 0, 0, 1).withOpacity(0.1),
                  ),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  BlocProvider.of<ConnectedDirectlyBloc>(context).add(
                      const ConnectedDirectlyEvent.updateTimerFireplace(
                          isCancel: true));
                },
                child: Text(
                  isRunning ? '' : 'Сброс.',
                  textAlign: TextAlign.left,
                  style: myTextStyleFontSarpanch(
                    fontSize: 24,
                    textColor:
                        myColorActivity, //const Color.fromRGBO(255, 0, 0, 1),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: Platform.isIOS ? 12.0 : 2),
                child: RotatedBox(
                  quarterTurns: 2,
                  child: TextButton(
                    onPressed: () {
                      if (!isRunning) {
                        BlocProvider.of<ConnectedDirectlyBloc>(context).add(
                            const ConnectedDirectlyEvent.updateTimerFireplace(
                                isIncrement: false));
                      }
                    },
                    child: SvgPicture.asset(
                      'assets/icons/icon_up.svg',
                      semanticsLabel: 'icon_bottom',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent)),
                onPressed: () {
                  if (isRunning) {
                    BlocProvider.of<ConnectedDirectlyBloc>(context)
                        .add(const ConnectedDirectlyEvent.updateTimerFireplace(
                      isCancel: true,
                    ));
                  } else {
                    BlocProvider.of<ConnectedDirectlyBloc>(context)
                        .add(const ConnectedDirectlyEvent.startTimer());
                  }
                },
                child: FittedBox(
                  child: Text(
                    isRunning ? 'Выкл.' : 'Установ.',
                    textAlign: TextAlign.right,
                    style: myTextStyleFontSarpanch(
                      fontSize: 24,
                      textColor:
                          // !isRunning
                          //     ? const Color.fromRGBO(0, 255, 71, 1)
                          //     :
                          myColorActivity, //const Color.fromRGBO(253, 133, 0, 1),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
