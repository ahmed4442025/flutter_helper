import 'package:flutter/material.dart';
import 'package:flutter_helper/core/app/app.dart';
import 'package:flutter_helper/core/app/get_it/get_it.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  runApp(const MyApp());
}
