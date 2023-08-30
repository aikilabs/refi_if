import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../components/custom_button.dart';
import '../../../../components/multicolored_text.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/strings_manager.dart';
import '../../../../utils/style_manager.dart';

class DesktopExploreBar extends StatelessWidget {
  const DesktopExploreBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MultiColoredText(
              primaryText: HomeStringManager.exploreTitlePrimary,
              secondaryText: HomeStringManager.exploreTitleSecondary,
              primaryColor: ColorManager.white,
              textAlign: TextAlign.left,
              secondaryColor: ColorManager.primary,
              fontSize: width * 0.03),
          SizedBox(
            height: height * 0.015,
          ),
          Text(
            HomeStringManager.exploreDetails,
            style: getMediumTextStyle(
                color: ColorManager.hintGrey, fontSize: width * 0.014),
          ),
          SizedBox(height: height * 0.08),
          CustomButton(
            onPressed: () async {
              await launchUrlString("https://t.me/+Bbb5VsxLmloyNWM0");
            },
            text: HomeStringManager.getStarted,
            width: 180,
            fontSize: 16,
          )
        ],
      ),
    );
  }
}
