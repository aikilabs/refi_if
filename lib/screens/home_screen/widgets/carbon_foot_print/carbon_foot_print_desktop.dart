import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../components/multicolored_text.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/strings_manager.dart';
import '../../../../utils/style_manager.dart';

class DesktopCarbonFootPrintsContainer extends StatelessWidget {
  final String? image;
  const DesktopCarbonFootPrintsContainer({Key? key, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: width * 0.35,
          child: Column(
            children: [
              MultiColoredText(
                primaryText: HomeStringManager.carbonFootprintTitlePrimary,
                secondaryText: HomeStringManager.carbonFootprintTitleSecondary,
                primaryColor: ColorManager.white,
                secondaryColor: ColorManager.primary,
                textAlign: TextAlign.left,
                fontSize: width * 0.03,
              ),
              Text(
                HomeStringManager.carbonFootprintDetails,
                style: getMediumTextStyle(
                    color: ColorManager.hintGrey, fontSize: width * 0.014),
              )
            ],
          ),
        ),
        SizedBox(
          width: width * 0.4,
          height: height * 0.48,
          child: CachedNetworkImage(
            imageUrl: UrlStrings.carbonFootprintUrl,
          ),
        ),
      ],
    );
  }
}
