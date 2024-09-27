import 'package:fireplace/ui_layout/src/styles/styles.dart';
import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';
import 'package:fireplace/ui_layout/src/wrappers/src/skeleton_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:business_layout/business_layout.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/app_bar_fireplace.dart';
import 'widgets/body_fireplace_connected_page/body_fireplace_connected_page.dart';

class FireplaceConnectedPage extends StatefulWidget {
  static const String id = '/fireplaceConnectedPage';

  const FireplaceConnectedPage({
    super.key,
    required this.wifiName,
    required this.ipAddress,
  });

  final String wifiName;
  final String ipAddress;

  @override
  State<FireplaceConnectedPage> createState() => _FireplaceConnectedPageState();
}

class _FireplaceConnectedPageState extends State<FireplaceConnectedPage> {
  late final ConnectedDirectlyBloc connectedDirectlyBloc;

  @override
  void initState() {
    connectedDirectlyBloc = ConnectedDirectlyBloc(
      wiFiName: widget.wifiName,
      ipAddress: widget.ipAddress,
    );
    connectedDirectlyBloc.add(const ConnectedDirectlyEvent.onInit());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ConnectedDirectlyBloc>(
      create: (_) => connectedDirectlyBloc,
      child: const _FireplaceConnectedPage(),
    );
  }

  @override
  void dispose() {
    connectedDirectlyBloc.close();
    super.dispose();
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
