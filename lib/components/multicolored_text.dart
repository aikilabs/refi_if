import 'package:flutter/material.dart';

import '../utils/color_manager.dart';
import '../utils/style_manager.dart';

class MultiColoredText extends StatelessWidget {
  final String primaryText;
  final String secondaryText;
  final Color primaryColor;
  final Color secondaryColor;
  final TextAlign textAlign;
  final double fontSize;
  const MultiColoredText(
      {Key? key,
      required this.primaryText,
      required this.secondaryText,
      required this.primaryColor,
      required this.secondaryColor,
      required this.fontSize,
      required this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: textAlign,
        text: TextSpan(children: [
          TextSpan(
            text: primaryText,
            style: getBoldTextStyle(color: primaryColor, fontSize: fontSize),
          ),
          TextSpan(
            text: " ",
            style: getBoldTextStyle(
                color: ColorManager.primary, fontSize: fontSize),
          ),
          TextSpan(
              text: secondaryText,
              style:
                  getBoldTextStyle(color: secondaryColor, fontSize: fontSize)),
        ]));
  }
}
