import 'package:flutter/material.dart';
import 'package:refi_ife/screens/home_screen/widgets/carbon_foot_print/carbon_foot_print_desktop.dart';
import 'package:refi_ife/screens/home_screen/widgets/carbon_foot_print/carbon_foot_print_mobile.dart';
import 'package:refi_ife/screens/home_screen/widgets/crop_diversity_bar/crop_diversity_container_desktop.dart';
import 'package:refi_ife/screens/home_screen/widgets/crop_diversity_bar/crop_diversity_container_mobile.dart';
import 'package:refi_ife/screens/home_screen/widgets/explore/explore_desktop.dart';
import 'package:refi_ife/screens/home_screen/widgets/explore/explore_mobile.dart';
import 'package:refi_ife/screens/home_screen/widgets/historical_arts_bar/historical_arts_container_desktop.dart';
import 'package:refi_ife/screens/home_screen/widgets/historical_arts_bar/historical_arts_container_mobile.dart';
import 'package:refi_ife/screens/home_screen/widgets/waste_recycling/waste_recyling_desktop.dart';
import 'package:refi_ife/screens/home_screen/widgets/waste_recycling/waste_recyling_mobile.dart';

import '../../components/background.dart';
import '../../components/bottom_bar/bottom_bar.dart';
import '../../components/responsive_widget.dart';
import '../../components/sized_box.dart';
import '../../components/top_bar.dart';
import '../../utils/color_manager.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ColorManager.blackPrimary,
      body: ListView(
        children: [
          SizedBox(
            width: width,
            height: height,
            child: Stack(
              children: [
                const Background(),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: width * 0.05, vertical: height * 0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeTopBar(),
                      SizedBox(height: 100),
                      ResponsiveWidget(
                          dWidget: DesktopExploreBar(),
                          mWidget: MobileExploreBar()),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.1,
                ),
              ],
            ),
          ),
          SizedBoxH(desktopH: 120, mobileH: 80),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.065),
            child: Column(
              children: [
                ResponsiveWidget(
                    dWidget: DesktopCropDiversityContainer(),
                    mWidget: MobileCropDiversityContainer()),
                SizedBoxH(
                  desktopH: 180,
                  mobileH: 48,
                ),
                ResponsiveWidget(
                    dWidget: DesktopCarbonFootPrintsContainer(),
                    mWidget: MobileCarbonFootPrintsContainer()),
                SizedBoxH(
                  desktopH: 180,
                  mobileH: 48,
                ),
                ResponsiveWidget(
                    dWidget: DesktopHistoricalArtsContainer(),
                    mWidget: MobileHistoricalArtsContainer()),
                SizedBoxH(
                  desktopH: 180,
                  mobileH: 48,
                ),
                ResponsiveWidget(
                    dWidget: DesktopWasteRecyclingContainer(),
                    mWidget: MobileWasteRecyclingContainer()),
                AppBottomBar()
              ],
            ),
          ),
          SizedBoxH(desktopH: 100, mobileH: 60),
        ],
      ),
    );
  }
}
