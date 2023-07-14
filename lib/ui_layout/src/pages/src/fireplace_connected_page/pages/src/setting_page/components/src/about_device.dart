import 'package:business_layout/business_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:models/models.dart';
import '../../../../../../../../styles/styles.dart';

class AboutDeviceWidget extends StatelessWidget {
  const AboutDeviceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FireplaceDataModel fireplaceDataModel =
        BlocProvider.of<ConnectedDirectlyBloc>(context).state.fireplaceData!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Об устройстве:',
          style: myTextStyleFontRoboto(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: mySizedHeightBetweenAlert,
        ),
        Text.rich(
          TextSpan(
            style: myTextStyleFontRoboto(fontSize: 14),
            children: [
              TextSpan(
                text: 'Страна производства:',
                style: myTextStyleFontRoboto(textColor: myTwoColor),
              ),
              TextSpan(
                text: 'Россия', //не меняется для всех каминов
                style: myTextStyleFontRoboto(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: mySizedHeightBetweenAlert / 2,
        ),
        Text.rich(
          TextSpan(
            style: TextStyle(fontSize: 16),
            children: [
              TextSpan(
                text: 'Модель: ',
                style: myTextStyleFontRoboto(textColor: myTwoColor),
              ),
              TextSpan(
                text: fireplaceDataModel.model ?? "камин",
                style: myTextStyleFontRoboto(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: mySizedHeightBetweenAlert / 2,
        ),
        Text.rich(
          TextSpan(
            style: TextStyle(fontSize: 16),
            children: [
              TextSpan(
                text: 'Серийный номер: ',
                style: myTextStyleFontRoboto(textColor: myTwoColor),
              ),
              TextSpan(
                text: fireplaceDataModel.serialNumber ?? '...',
                style: myTextStyleFontRoboto(),
              ),
            ],
          ),
        ),
        SizedBox(
          height: mySizedHeightBetweenAlert / 2,
        ),
        Text.rich(
          TextSpan(
            style: TextStyle(fontSize: 16),
            children: [
              TextSpan(
                text: 'Дата производства: ',
                style: myTextStyleFontRoboto(textColor: myTwoColor),
              ),
              TextSpan(
                text: fireplaceDataModel.dateOfManufacture ?? '...',
                style: myTextStyleFontRoboto(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
