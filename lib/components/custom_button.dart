import 'package:flutter/material.dart';

import '../utils/color_manager.dart';
import '../utils/style_manager.dart';

class CustomButton extends StatelessWidget {
  final Color? backgroundColor;
  final VoidCallback onPressed;
  final String text;
  final double? width;
  final double? height;
  final double? fontSize;
  final double? elevation;
  final Color shadowColor;
  final Color childColor;
  final double? radius;
  final double? verticalPadding;
  final double? horizontalPadding;
  const CustomButton(
      {Key? key,
      this.backgroundColor,
      this.width,
      this.height,
      this.fontSize,
      this.elevation,
      this.shadowColor = ColorManager.white,
      this.childColor = ColorManager.white,
      required this.onPressed,
      this.radius,
      this.horizontalPadding,
      this.verticalPadding,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor ?? ColorManager.primary,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius ?? 24.0)),
              elevation: elevation),
          onPressed: onPressed,
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: verticalPadding ?? 10,
                horizontal: horizontalPadding ?? 0),
            child: Center(
              child: Text(
                text,
                style: TextStyle(
                    color: childColor,
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final double? fontSize;
  final VoidCallback onPressed;
  final String title;
  const CustomTextButton(
      {Key? key, required this.title, required this.onPressed, this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: getMediumTextStyle(
              color: ColorManager.white, fontSize: fontSize ?? 16),
        ));
  }
}
