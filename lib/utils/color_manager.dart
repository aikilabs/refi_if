import 'package:flutter/material.dart';

class ColorManager {
  static const Color primary = Color.fromRGBO(0, 255, 51, 1);
  static const Color blackPrimary = Color.fromRGBO(8, 7, 7, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color hintGrey = Color(0xFF4E4B4A);
  static const Color subTextGrey = Color.fromRGBO(152, 164, 159, 1);
  static const Color iconBackgroundGrey = Color.fromRGBO(19, 17, 17, 1);
  static const Color paymentGrey = Color.fromRGBO(134, 135, 139, 1);
  static Color genreGrey = Colors.white.withOpacity(0.4);
  static Gradient primaryGradient = const SweepGradient(
    center: Alignment(0.50, 0.22),
    startAngle: -1,
    endAngle: -0,
    colors: [
      Color(0xFFFF50B9),
      Color(0xFFFF9950),
      Color(0xFFF0456E),
      Color(0xFFE78A35)
    ],
  );

  static Gradient privacyGradient = LinearGradient(
    begin: Alignment(1.00, 0.00),
    end: Alignment(-1, 0),
    colors: [Color(0xFF0D0B0B), Color(0x37441D0B), Color(0x4C66341D)],
  );

  static const Color errorRed = Colors.red;
  static const Color flixBlue = Color.fromRGBO(71, 139, 255, 1);
  static Color blackTextGrey = HexColor.fromHex('#8e8e8f');
  static Color textBlack = HexColor.fromHex('#191919');
  static Color greenButtonBackgroung = HexColor.fromHex('#052a1c');
  static Color lightGreen = HexColor.fromHex('#9BE84B');
  static Color primaryOpacity70 = HexColor.fromHex('#B3ED9728');
  static Color dialogBlack = HexColor.fromHex('#191919');
  static Color blurPrimary = HexColor.fromHex('#06543d');
  static Color iconGreen = HexColor.fromHex('#064f3c');
  static Color iconGoldlight = HexColor.fromHex('#ea9010');
  static Color iconGoldDark = HexColor.fromHex('#4c4011');
  static Color navGreen = HexColor.fromHex('#04130b');
  static Color primaryWithOpacity =
      HexColor.fromHex('#0BEEB8').withOpacity(0.1);

  //  new colors
  static Color darkPrimary = HexColor.fromHex('#d17d11');
  static Color dark = HexColor.fromHex('#000000');
  static Color grey1 = HexColor.fromHex('#707070');
  static Color grey2 = HexColor.fromHex('#797979');
  static Color bodyLight = HexColor.fromHex('#9FD560');
  static Color error = HexColor.fromHex('##86280c');
  static Color onboardingtitleColor = HexColor.fromHex('#525252');
  static Color bottomNavColor = HexColor.fromHex("#D4DDE0").withOpacity(0.6);
  static Color textFilledColor = Colors.white.withOpacity(0.1);
  static Color favContainerFill = Colors.white.withOpacity(0.08);
  static Color favPrimaryFill = HexColor.fromHex('#EA9010');
  static Color favContainerStroke = HexColor.fromHex('#80FFFF');
  static Color greyDialog = HexColor.fromHex('#1a1a1a');
  static Color subscriptionGradientStart = HexColor.fromHex('#0BEEB8');
  static Color subscriptionGradientEnd = HexColor.fromHex('#EA9010');
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    hexString = hexString.replaceAll('#', '');
    if (hexString.length == 6) {
      // ignore: prefer_interpolation_to_compose_strings
      hexString = 'ff' + hexString;
    }
    return Color(int.parse(hexString, radix: 16));
  }
}
