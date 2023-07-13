import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:business_layout/business_layout.dart';

Widget appBarFireplace({context}) {
  return BlocBuilder<ConnectedDirectlyBloc, ConnectedDirectlyState>(
    buildWhen: (prev, cur) =>
        cur.isSettingButtonActive != prev.isSettingButtonActive ||
        cur.fireplaceData?.isBlocButton != prev.fireplaceData?.isBlocButton,
    builder: (context, state) => SizedBox(
      height: MediaQuery.of(context).size.height / 10,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0, right: 8),
              child: state.isSettingButtonActive
                  ? const SizedBox()
                  : TextButton(
                      onPressed: () {
                        if (state.fireplaceData != null) {
                          BlocProvider.of<ConnectedDirectlyBloc>(context).add(
                            const ConnectedDirectlyEvent.changeIsBlocButton(
                              isNewBlocButton: true,
                            ),
                          );
                          BlocProvider.of<ConnectedDirectlyBloc>(context).add(
                            const ConnectedDirectlyEvent.changeIsSettingButton(
                              isNewSettingButton: false,
                            ),
                          );
                        }
                      },
                      child: SvgPicture.asset(
                        state.fireplaceData?.isBlocButton != null &&
                                (state.fireplaceData?.isBlocButton ?? false)
                            ? 'assets/icons/blocs_2.svg'
                            : 'assets/icons/blocs.svg',
                        semanticsLabel: 'premium-icon-internet',
                        fit: BoxFit.contain,
                      ),
                    ),
            ),
          ),
          Expanded(
            flex: 4,
            child: SvgPicture.asset(
              'assets/icons/header_logo.svg',
              semanticsLabel: 'header_logo',
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0, left: 8),
              child: TextButton(
                onPressed: () {
                  if (state.fireplaceData != null &&
                      !(state.fireplaceData!.isBlocButton)) {
                    BlocProvider.of<ConnectedDirectlyBloc>(context).add(
                      const ConnectedDirectlyEvent.changeIsSettingButton(),
                    );
                  }
                },
                child: SvgPicture.asset(
                  state.isSettingButtonActive
                      ? 'assets/icons/back.svg'
                      : 'assets/icons/setting.svg',
                  semanticsLabel: 'setting',
                  // color: controllerApp.isSettingButton ? myColorActivity : null,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
