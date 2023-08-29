import 'package:flutter/material.dart';

import '../utils/color_manager.dart';

class CircularIconButton extends StatelessWidget {
  final IconData icon;
  const CircularIconButton({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width * 0.035,
      height: width * 0.035,
      decoration: const BoxDecoration(
          shape: BoxShape.circle, color: ColorManager.iconBackgroundGrey),
      child: Icon(
        icon,
        size: width * 0.018,
        color: ColorManager.white,
      ),
    );
  }
}
