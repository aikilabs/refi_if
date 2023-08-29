import 'package:flutter/material.dart';
import 'package:refi_ife/utils/dimensions.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class SizedBoxH extends StatelessWidget {
  final double desktopH;
  final double mobileH;
  const SizedBoxH({Key? key, required this.desktopH, required this.mobileH})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
          ? desktopH.dHeight(context)
          : mobileH.mHeight(context),
    );
  }
}

class SizedBoxW extends StatelessWidget {
  final double desktopW;
  final double mobileW;
  const SizedBoxW({Key? key, required this.desktopW, required this.mobileW})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (ResponsiveBreakpoints.of(context).largerThan(MOBILE))
          ? desktopW.dWidth(context)
          : mobileW.mWidth(context),
    );
  }
}
