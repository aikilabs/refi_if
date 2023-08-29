import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../components/multicolored_text.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/strings_manager.dart';
import '../../../../utils/style_manager.dart';

class MobileHistoricalArtsContainer extends StatelessWidget {
  const MobileHistoricalArtsContainer({
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
              imageUrl: UrlStrings.historicalArtsUrl,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          MultiColoredText(
              primaryText: HomeStringManager.historicalArtTitlePrimary,
              secondaryText: HomeStringManager.historicalArtTitleSecondary,
              primaryColor: ColorManager.primary,
              fontSize: width * 0.075,
              textAlign: TextAlign.center,
              secondaryColor: ColorManager.white),
          SizedBox(
            height: 10,
          ),
          Text(
            HomeStringManager.historicalArtDetails,
            style: getMediumTextStyle(
                color: ColorManager.hintGrey, fontSize: width * 0.042),
          )
        ],
      ),
    );
  }
}
