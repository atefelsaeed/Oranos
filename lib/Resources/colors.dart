import 'package:flutter/material.dart';

class ColorManager {
  static Color primaryColor = HexColor.fromHex('#16919b');

  static Color grayColor = HexColor.fromHex('#5f5f5f');
  static Color grayIconColor = HexColor.fromHex('#c2c2c2');
  static Color grayCircleColor = HexColor.fromHex('#dfe8eb');
  static Color blackColor = HexColor.fromHex('#000000');
  static Color greenColor = HexColor.fromHex('#62dd91');

  static Color wight = HexColor.fromHex('#FFFFFF');
  static Color error = HexColor.fromHex('#e61f34');
}

//opacity40=>>66
//opacity50=>>80
//opacity70=>>B3
//opacity80=>>CC
extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF' + hexColorString; // 8 char with 100% opacity
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
