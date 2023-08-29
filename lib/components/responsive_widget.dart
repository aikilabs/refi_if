import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget dWidget;
  final Widget mWidget;
  const ResponsiveWidget(
      {Key? key, required this.dWidget, required this.mWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBreakpoints.of(context).largerThan(MOBILE)
        ? dWidget
        : mWidget;
  }
}
