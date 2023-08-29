import 'package:flutter/material.dart';

import '../../screens/home_screen/widgets/icon_bar/icon_bar_desktop.dart';
import '../../screens/home_screen/widgets/icon_bar/icon_bar_mobile.dart';
import '../responsive_widget.dart';
import '../sized_box.dart';

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBoxH(
          desktopH: 100,
          mobileH: 100,
        ),
        ResponsiveWidget(dWidget: DesktopIconBar(), mWidget: MobileIconBar())
      ],
    );
  }
}
