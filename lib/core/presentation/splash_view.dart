import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_helper/core/app/app_constants.dart';
import 'package:flutter_helper/core/presentation/resources/views_manager.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer1;

  _startDelay() {
    _timer1 = Timer(const Duration(seconds: AppConstants.splashDelay), _goNext);
  }

  void _goNext() {
    ViewsManager.homeAfterSplash();
  }

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    print("splash View");
    return Scaffold(
        body: SafeArea(
            child: Container(
      color: const Color(0xffFF440F),
      child: const Text("Welcome ", strutStyle: StrutStyle(fontSize: 30)),
    )));
  }

  @override
  void dispose() {
    _timer1?.cancel();
    super.dispose();
  }
}
