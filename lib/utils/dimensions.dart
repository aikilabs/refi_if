import 'package:flutter/widgets.dart';

extension MHeight on num {
  // convert height
  double mHeight(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    const figmaDesignHeight = 926;
    double newScreenHeight = figmaDesignHeight / toDouble();
    return screenHeight / newScreenHeight;
  }
}

extension MWidth on num {
  //  convert width
  double mWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const figmaDesignWidth = 428;
    double newScreenWidth = figmaDesignWidth / toDouble();
    return screenWidth / newScreenWidth;
  }
}

extension THeight on num {
  // convert height
  double tHeight(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    const figmaDesignHeight = 926;
    double newScreenHeight = figmaDesignHeight / toDouble();
    return screenHeight / newScreenHeight;
  }
}

extension TWidth on num {
  //  convert width
  double tWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const figmaDesignWidth = 375;
    double newScreenWidth = figmaDesignWidth / toDouble();
    return screenWidth / newScreenWidth;
  }
}

extension DHeight on num {
  // convert height
  double dHeight(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    const figmaDesignHeight = 1024;
    double newScreenHeight = figmaDesignHeight / toDouble();
    return screenHeight / newScreenHeight;
  }
}

extension DWidth on num {
  //  convert width
  double dWidth(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const figmaDesignWidth = 1440;
    double newScreenWidth = figmaDesignWidth / toDouble();
    return screenWidth / newScreenWidth;
  }
}
