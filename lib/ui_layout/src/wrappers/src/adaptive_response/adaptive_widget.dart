//чтобы принимать в себя разные layout для разных условий и делать проверку внутри

import 'package:flutter/material.dart';

const int _mobileScreenSize = 450;
// const int _tabletScreenSize = 700;
const int _tabletScreenSize = 960;

class AdaptiveWidget extends StatelessWidget {
  final Widget? mobileScreen;
  final Widget? tabletScreen;
  final Widget? desktopScreen;
  final Widget? otherScreen;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < _mobileScreenSize;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= _mobileScreenSize &&
      MediaQuery.of(context).size.width < _tabletScreenSize;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > _tabletScreenSize;

  const AdaptiveWidget({
    Key? key,
    this.mobileScreen,
    this.tabletScreen,
    this.desktopScreen,
    this.otherScreen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width >= _tabletScreenSize && desktopScreen != null) {
      return desktopScreen!;
    }
    if (width > _mobileScreenSize && tabletScreen != null) {
      return tabletScreen!;
    }
    if (width <= _mobileScreenSize && mobileScreen != null) {
      return mobileScreen!;
    }
    if (otherScreen != null) {
      return otherScreen!;
    }

    throw Exception('Can not watch layout');
  }
}
