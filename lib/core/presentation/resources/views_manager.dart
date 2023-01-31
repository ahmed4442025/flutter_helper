import 'package:flutter/material.dart';
import 'package:flutter_helper/core/app/app_constants.dart';
import 'package:flutter_helper/core/app/shared_vars.dart';
import 'package:flutter_helper/home/home_view/home_view.dart';
import 'package:flutter_helper/shared_pref/view/shared_view.dart';
import 'package:flutter_helper/temp/views/temp_test.dart';


class ViewsManager {

  // =============== const pages =================
  static void homeAfterSplash() {
    if (AppConstants.isTestMode) {
      tempTest(); // test mode
      return;
    }
      home();
  }

  static void tempTest() {
    _navigateAndFinish(const TempTestView());
  }

  static void home() {
    _navigateAndFinish(const HomeView());
  }
  static void sharedPref() {
    _navigateTo(const SharedPrefView());
  }



  // go back if you can
  static void backIfUCan() {
    _back();
  }

  // ========== privet methods ==========

  // privet section =========================
  // with back
  static void _navigateTo(widget) => Navigator.push(
      navigatorKey.currentContext!, MaterialPageRoute(builder: (context) => widget));

  // with no back
  static void _navigateAndFinish(widget) => Navigator.pushAndRemoveUntil(
        navigatorKey.currentContext!,
        MaterialPageRoute(builder: (context) => widget),
        (route) => false,
      );

  // back
  static void _back() {
    if (Navigator.canPop(navigatorKey.currentContext!)) {
      Navigator.pop(navigatorKey.currentContext!);
    }
  }
}
