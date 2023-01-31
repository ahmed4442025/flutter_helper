import 'package:flutter/material.dart';

// class ColorManager {
//   static const primary = Color(0xff6200eb);
//   static const darkGrey = Color(0xff525252);
//   static const grey = Color(0xff898989);
//   static const lightGrey = Color(0xff9E9E9E);
//   static const fontGrey = Color(0xff5F5F5F);
//
//   // other colors
//   static Color darkPrimary = const Color(0xff5200db);
//   static Color lightPrimary = const Color(0xcc6200eb); // color with 80% opacity
//   static Color white = const Color(0xffFFFFFF);
//   static Color black = const Color(0xff000000);
//   static Color error = const Color(0xff7E1428);
// }


class ColorManager {
  static Color fillEditTextBg = const Color(0xFFFAFAFC);
  static Color fillEditTextBgInProduct = const Color(0xFFF5F6FA);
  static Color editTextHintColor = const Color(0xFF0F0A39);
  static Color editTextSuffixColor = const Color(0xFFE3E3E3);
  static Color bgColor = const Color(0xFFFFFFFF);
  static Color mainChatBg = const Color(0xFF9DA4BF);
  static Color secondChatBg = const Color(0xFFEFEFEF);
  static Color messageChatBg = const Color(0xFF000F1C);
  static Color secondChatNameBg = const Color(0xFFFE9F10);
  static Color selectMenuBoxBg = const Color(0xFFFFD5CC);
  static Color selectMenuIconBg = const Color(0xFFFF440F);
  static Color textFieldError = const Color(0xFFE30A1F);
  static Color white = const Color(0xFFFFFFFF);

}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
