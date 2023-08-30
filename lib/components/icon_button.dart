import 'package:flutter/material.dart';

import '../utils/color_manager.dart';

class CircularIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  const CircularIconButton({Key? key, required this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: width * 0.035,
        height: width * 0.035,
        decoration: const BoxDecoration(
            shape: BoxShape.circle, color: ColorManager.iconBackgroundGrey),
        child: Icon(
          icon,
          size: width * 0.018,
          color: ColorManager.white,
        ),
      ),
    );
  }
}
