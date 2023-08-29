import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../components/icon_button.dart';
import '../../../../utils/color_manager.dart';
import '../../../../utils/strings_manager.dart';
import '../../../../utils/style_manager.dart';

class DesktopIconBar extends StatelessWidget {
  const DesktopIconBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    color: ColorManager.white, fontSize: width * 0.02),
              ),
            ],
          ),
          const Row(
            children: [
              CircularIconButton(
                icon: FontAwesomeIcons.facebook,
              ),
              CircularIconButton(
                icon: FontAwesomeIcons.youtube,
              ),
              CircularIconButton(
                icon: FontAwesomeIcons.discord,
              ),
              CircularIconButton(
                icon: FontAwesomeIcons.figma,
              ),
              CircularIconButton(
                icon: FontAwesomeIcons.whatsapp,
              ),
            ],
          ),
          Text(
            HomeStringManager.copyRight,
            style: getMediumTextStyle(
                color: ColorManager.hintGrey, fontSize: width * 0.012),
          )
        ],
      ),
    );
  }
}
