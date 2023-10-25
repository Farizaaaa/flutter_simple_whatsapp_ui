
import 'package:flutter/material.dart';

const black = Colors.black;
const backgroundColor = Color.fromRGBO(19, 28, 33, 1);
const appBarColor = Color.fromRGBO(31, 44, 52, 1);
const tabIndicatorColor = Color.fromRGBO(0, 167, 131, 1);
const grey = Colors.grey;
const white = Colors.white;
const lg = Colors.lightGreenAccent;
const lg2 = Color.fromARGB(255, 121, 195, 37);
const lg3 = Color.fromARGB(255, 220, 235, 203);

class ColorConstants {
  static Color starterWhite = hexToColor('#DADADA');
  static Color primaryColor = hexToColor('#1ED760');
  static Color cardBackGroundColor = hexToColor('#0E0E0F');
  static Color inputHintColor = hexToColor('#FFFFFF');
}

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex));

  return Color(int.parse(hex.substring(1), radix: 16) +
      (hex.length == 7 ? 0xFF000000 : 0x00000000));
}
