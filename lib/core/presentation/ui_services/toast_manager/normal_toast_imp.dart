import 'package:flutter/material.dart';
import 'package:flutter_helper/core/presentation/ui_services/toast_manager/toast_repo.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastNormalImp implements ToastRepo {
  @override
  void showError(String msg, BuildContext context) {
    _showToast(context, msg, Colors.red);
  }

  @override
  void showNormalMsg(String msg, BuildContext context) {
    _showToast(context, msg, Colors.white, Colors.black);
  }

  @override
  void showSuccess(String msg, BuildContext context) {
    _showToast(context, msg, Colors.green);
  }

  @override
  void showWarning(String msg, BuildContext context) {
    _showToast(context, msg, Colors.orangeAccent.shade200);
  }

  _showToast(context, message,Color backgroundColor, [Color fontColor = Colors.white]) {
    return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 3,
        backgroundColor: backgroundColor,
        textColor: fontColor,
        fontSize: 16.0);
  }
}

