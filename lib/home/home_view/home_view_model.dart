import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_helper/core/presentation/resources/views_manager.dart';

class HomeViewModel {
  final List<ButtonInfo> _listButton = [
    ButtonInfo("shared", Icons.folder_shared, ViewsManager.sharedPref),
    ButtonInfo("shared", Icons.folder_shared, ViewsManager.sharedPref),
    ButtonInfo("shared", Icons.folder_shared, ViewsManager.sharedPref),
  ];

  List<ButtonInfo> get buttons => _listButton;
}

class ButtonInfo {
  String? title;
  IconData? icon;
  GestureTapCallback? onTap;

  ButtonInfo(this.title, this.icon, this.onTap);
}
