import 'dart:ui';

import 'package:flutter/material.dart';

class ColorsValue {
  static Color primaryColor = HexColor.fromHex("#F9FAF5");
  static Color secondColor = HexColor.fromHex("#18A5A7");
  static Color thirdColor = HexColor.fromHex("#BFFFC7");
  static LinearGradient linearPrimary = LinearGradient(colors: [
    secondColor,
    thirdColor,
  ]);
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll("#", "");
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString;
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
