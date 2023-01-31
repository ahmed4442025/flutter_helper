import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_helper/core/app/shared_vars.dart';
import 'package:flutter_helper/core/presentation/resources/theme_manager.dart';
import 'package:flutter_helper/core/presentation/splash_view.dart';

class MyApp extends StatelessWidget {
  // final Connectivity connectivity;

  const MyApp({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        home: const SplashPage(),
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeManager.mainTheme(),
      );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        // etc.
      };
}
