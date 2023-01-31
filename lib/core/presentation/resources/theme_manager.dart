import 'package:flutter/material.dart';
import 'package:flutter_helper/core/presentation/resources/color_manager.dart';
import 'package:flutter_helper/core/presentation/resources/values_manager.dart';

class ThemeManager {
  static ThemeData mainTheme() => ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xffFF440F),
      selectedLabelStyle: TextStyle(fontSize: 10),
      unselectedLabelStyle: TextStyle(
        color: Color(0xffBCBCCD),
      ),
      backgroundColor: Colors.white,
      elevation: 30.0,
    ),
    scaffoldBackgroundColor: Colors.white,
    // primaryColor: Colors.black,
    iconTheme: const IconThemeData(color: Colors.black),
    primaryIconTheme: const IconThemeData(color: Colors.black),
    //brightness: Brightness.dark,
    fontFamily: 'Montserrat-Arabic',

    textTheme: const TextTheme(
      subtitle1: TextStyle(
        fontSize: 10,
      ),
    ),
    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // content padding
      contentPadding: const EdgeInsets.all(8),
      // hint style
      hintStyle: const TextStyle(color: Colors.grey),

      // focused border style
      focusedBorder: OutlineInputBorder(
        //Outline border type for TextField
        borderRadius: const BorderRadius.all(Radius.circular(AppSize.s8)),
        borderSide: BorderSide(color: ColorManager.secondChatNameBg),
      ),
      // error border style
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: ColorManager.textFieldError),
      ),
      // disabledBorder
      disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.black)),
      //enabledBorder
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.grey),
      ),

      // focusedErrorBorder
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: ColorManager.selectMenuIconBg),
      ),
    ),
  );
}


// class ThemeManager {
//   static ThemeData getAppTheme() {
//     return ThemeData(
//       // main colors
//       primaryColor: ColorManager.primary,
//       primaryColorLight: ColorManager.lightPrimary,
//       primaryColorDark: ColorManager.darkPrimary,
//       disabledColor: ColorManager.grey,
//       splashColor: ColorManager.lightPrimary,
//
//       // app bar theme
//       appBarTheme: AppBarTheme(
//           centerTitle: false,
//           color: ColorManager.primary,
//           elevation: AppSize.s4,
//           shadowColor: ColorManager.lightPrimary,
//           titleTextStyle: StylesManager.getRegularStyle(
//               fontSize: FontSizeManager.s16, color: ColorManager.white)),
//
//       // button theme
//       buttonTheme: ButtonThemeData(
//           shape: const StadiumBorder(),
//           disabledColor: ColorManager.grey,
//           buttonColor: ColorManager.primary,
//           splashColor: ColorManager.lightPrimary),
//
//       // elevated button them
//       elevatedButtonTheme: ElevatedButtonThemeData(
//           style: ElevatedButton.styleFrom(
//               textStyle: StylesManager.getRegularStyle(
//                   color: ColorManager.white, fontSize: FontSizeManager.s17),
//               backgroundColor: ColorManager.primary,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(AppSize.s12)))),
//
//       // text theme
//       textTheme: TextTheme(
//         bodyLarge: StylesManager.getRegularStyle(
//             color: ColorManager.black, fontSize: FontSizeManager.s20),
//         bodySmall: StylesManager.getRegularStyle(
//             color: ColorManager.grey, fontSize: FontSizeManager.s14),
//
//         // ----------- text field -----------
//         titleMedium: StylesManager.getMediumStyle(
//             color: ColorManager.fontGrey, fontSize: FontSizeManager.s14),
//       ),
//       // input decoration theme (text form field)
//       inputDecorationTheme: InputDecorationTheme(
//           // content padding
//           contentPadding: const EdgeInsets.all(AppPadding.p8),
//           // hint style
//           hintStyle: StylesManager.getRegularStyle(
//               color: ColorManager.grey, fontSize: FontSizeManager.s14),
//           labelStyle: StylesManager.getMediumStyle(
//               color: ColorManager.grey, fontSize: FontSizeManager.s14),
//           errorStyle: StylesManager.getRegularStyle(color: ColorManager.error),
//
//           // enabled border style
//           enabledBorder: const OutlineInputBorder(
//               borderSide:
//                   BorderSide(color: ColorManager.grey, width: AppSize.s1_5),
//               borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
//
//           // focused border style
//           focusedBorder: const OutlineInputBorder(
//               borderSide:
//                   BorderSide(color: ColorManager.primary, width: AppSize.s1_5),
//               borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
//
//           // error border style
//           errorBorder: OutlineInputBorder(
//               borderSide:
//                   BorderSide(color: ColorManager.error, width: AppSize.s2),
//               borderRadius:
//                   const BorderRadius.all(Radius.circular(AppSize.s8))),
//           errorMaxLines: 2,
//           // focused border style
//           focusedErrorBorder: const OutlineInputBorder(
//               borderSide:
//                   BorderSide(color: ColorManager.primary, width: AppSize.s2),
//               borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)))),
//     );
//   }
// }
