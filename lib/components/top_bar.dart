import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../utils/color_manager.dart';
import '../utils/strings_manager.dart';
import '../utils/style_manager.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        SizedBox(
          width: width * 0.05,
          height: width * 0.05,
          child: CachedNetworkImage(
            imageUrl: UrlStrings.logo,
          ),
        ),
        SizedBox(
          width: width * 0.02,
        ),
        Text(
          HomeStringManager.appName,
          style: getStrongBoldTextStyle(
              color: ColorManager.white, fontSize: width * 0.02),
        ),
      ],
    );
  }
}
