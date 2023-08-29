import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../components/multicolored_text.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/strings_manager.dart';
import '../../../../utils/style_manager.dart';

class MobileCarbonFootPrintsContainer extends StatelessWidget {
  const MobileCarbonFootPrintsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: height * 0.32,
            child: CachedNetworkImage(
              imageUrl: UrlStrings.carbonFootprintUrl,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          MultiColoredText(
              primaryText: HomeStringManager.carbonFootprintTitlePrimary,
              secondaryText: HomeStringManager.carbonFootprintTitleSecondary,
              primaryColor: ColorManager.white,
              fontSize: width * 0.075,
              textAlign: TextAlign.center,
              secondaryColor: ColorManager.primary),
          const SizedBox(
            height: 10,
          ),
          Text(
            HomeStringManager.carbonFootprintDetails,
            style: getMediumTextStyle(
                color: ColorManager.hintGrey, fontSize: width * 0.042),
          )
        ],
      ),
    );
  }
}
