import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';
import 'package:fireplace/ui_layout/src/wrappers/src/skeleton_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:business_layout/business_layout.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/app_bar_fireplace.dart';
import 'widgets/body_fireplace_connected_page/body_fireplace_connected_page.dart';

class FireplaceConnectedPage extends StatelessWidget {
  const FireplaceConnectedPage({
    super.key,
    required this.wifiName,
    required this.ipAddress,
  });

  final String wifiName;
  final String ipAddress;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ConnectedDirectlyBloc>(
      create: (_) => ConnectedDirectlyBloc()
        ..add(
          ConnectedDirectlyEvent.onInit(
            wifiName: wifiName,
            ipAddress: ipAddress,
          ),
        ),
      child: const _FireplaceConnectedPage(),
    );
  }
}

class _FireplaceConnectedPage extends StatelessWidget {
  const _FireplaceConnectedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MySkeletonPage(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 8),
          appBarFireplace(context: context),
          const SizedBox(height: 8),
          const Expanded(child: BodyConnectedPage()),
        ],
      ),
    );
  }
}
