import 'package:flutter/material.dart';

abstract class ToastRepo {

  void showError(String msg, BuildContext context);

  void showSuccess(String msg, BuildContext context);

  void showWarning(String msg, BuildContext context);

  void showNormalMsg(String msg, BuildContext context);
}
