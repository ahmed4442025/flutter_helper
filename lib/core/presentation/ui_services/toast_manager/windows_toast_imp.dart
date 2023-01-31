import 'package:flutter/material.dart';
import 'package:flutter_helper/core/presentation/ui_services/toast_manager/toast_repo.dart';
import 'package:motion_toast/motion_toast.dart';

class WindowsToastImp implements ToastRepo {
  @override
  void showError(String msg, BuildContext context) {
    MotionToast.error(
      title: const Text("Error"),
      description: Text(msg),
    ).show(context);
  }

  @override
  void showNormalMsg(String msg, BuildContext context) {
    MotionToast.info(
      title: const Text("info"),
      description: Text(msg),
    ).show(context);
  }

  @override
  void showSuccess(String msg, BuildContext context) {
    MotionToast.success(
      title: const Text("Success"),
      description: Text(msg),
    ).show(context);
  }

  @override
  void showWarning(String msg, BuildContext context) {
    MotionToast.warning(
      title: const Text("Warning"),
      description: Text(msg),
    ).show(context);
  }
}
