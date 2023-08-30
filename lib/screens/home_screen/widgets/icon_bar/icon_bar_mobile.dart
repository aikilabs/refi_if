import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:refi_ife/utils/dimensions.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../../components/icon_button.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/strings_manager.dart';
import '../../../../utils/style_manager.dart';

class MobileIconBar extends StatelessWidget {
  const MobileIconBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
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
                    color: ColorManager.white, fontSize: 28),
              ),
            ],
          ),
          SizedBox(
            height: 20.mHeight(context),
          ),
          Row(
            children: [
              CircularIconButton(
                icon: FontAwesomeIcons.twitter,
                onPressed: () async {
                  await launchUrlString("https://twitter.com/refi_ife");
                },
              ),
              CircularIconButton(
                icon: FontAwesomeIcons.youtube,
              ),
              CircularIconButton(
                icon: FontAwesomeIcons.discord,
              ),
              CircularIconButton(
                icon: FontAwesomeIcons.telegram,
                onPressed: () async {
                  await launchUrlString("https://t.me/+Bbb5VsxLmloyNWM0");
                },
              ),
              CircularIconButton(
                icon: FontAwesomeIcons.whatsapp,
              ),
            ],
          ),
          SizedBox(
            height: 80.mHeight(context),
          ),
          Center(
            child: Text(
              HomeStringManager.copyRight,
              textAlign: TextAlign.center,
              style: getMediumTextStyle(
                  color: ColorManager.hintGrey, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}
