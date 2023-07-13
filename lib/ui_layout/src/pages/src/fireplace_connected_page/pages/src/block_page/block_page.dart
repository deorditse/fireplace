import 'package:fireplace/ui_layout/src/widgets_for_all_pages/widgets_for_all_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:business_layout/business_layout.dart';

import 'widgets/body_block_fireplace.dart';
import '../../../widgets/body_fireplace_connected_page/components/bottom_row_with_parameters.dart';

class BlockPage extends StatelessWidget {
  const BlockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      // mainAxisSize: MainAxisSize.min,
      children: [
        myTitleModel(
          model: BlocProvider.of<ConnectedDirectlyBloc>(context)
              .state
              .fireplaceData
              ?.model,
        ),
        const Expanded(
          child: Center(
            child: BodyBlockFireplace(),
          ),
        ),
        const BottomRowWithParameters(),
      ],
    );
  }
}
