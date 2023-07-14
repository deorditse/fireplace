import 'package:models/models.dart';
import 'package:fireplace/ui_layout/src/pages/src/fireplace_connected_page/pages/src/setting_page/components/components.dart';
import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';
import 'package:fireplace/ui_layout/src/wrappers/src/skeleton_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:business_layout/business_layout.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SettingBloc>(
      create: (_) => SettingBloc()
        ..add(
          SettingEvent.onInit(
            ipAddress: BlocProvider.of<RootBloc>(context).state.ipAddress,
          ),
        ),
      child: const _SettingPage(),
    );
  }
}

class _SettingPage extends StatelessWidget {
  const _SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const ConnectWithHomeWifi(),
          myDivider(),
          const ToTheListOfFireplaces(),
          myDivider(),
          SizedBox(height: mySizedHeightBetweenAlert),
          const SetVolumeWidget(),
          SizedBox(height: mySizedHeightBetweenAlert),
          myDivider(),
          SizedBox(height: mySizedHeightBetweenAlert),
          const FittedBox(child: AboutDeviceWidget()),
          SizedBox(height: mySizedHeightBetweenAlert),
          myDivider(),
          // SizedBox(height: mySizedHeightBetweenAlert),
          const PasswordUser(),
          // SizedBox(height: mySizedHeightBetweenAlert),
          myDivider(),
          // SizedBox(height: mySizedHeightBetweenAlert),
          const InstructionUser(),
          // SizedBox(height: mySizedHeightBetweenAlert),
          myDivider(),
          SizedBox(height: mySizedHeightBetweenAlert),
          const ServiceCenterContacts(),
          SizedBox(height: mySizedHeightBetweenAlert),
          myDivider(),
          SizedBox(height: mySizedHeightBetweenAlert),
          rowWithDomain(context: context),
          SizedBox(height: mySizedHeightBetweenAlert),
        ],
      ),
    );
  }

  myDivider() {
    return Divider(
      color: myTwoColor,
      height: 2,
      thickness: 1,
    );
  }
}
