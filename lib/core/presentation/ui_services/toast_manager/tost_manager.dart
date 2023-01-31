import 'package:flutter/material.dart';
import 'package:flutter_helper/core/data/common/error_handler/failure.dart';
import 'package:flutter_helper/core/presentation/ui_services/toast_manager/toast_repo.dart';

class ToastManager {
  static late final ToastRepo _toastRepo;
  static late final GlobalKey<NavigatorState> _navigatorKey;

  // call init function in main before app run
  static void init(ToastRepo toastRepo, GlobalKey<NavigatorState> navigatorKey) {
    _toastRepo = toastRepo;
    _navigatorKey = navigatorKey;
  }

  // give Failure object and will show correct type
  static void handelFailure(Failure failure) {
    switch (failure.type) {
      case TypeMsg.ok:
        success(failure.message);
        break;
      case TypeMsg.error:
        error(failure.message);
        break;
      case TypeMsg.warning:
        warning(failure.message);
        break;
    }
  }

  static void error(String msg) {
    if (_navigatorKey.currentState != null) {
      _toastRepo.showError(msg, _navigatorKey.currentState!.context);
    }
  }

  static void warning(String msg) {
    if (_navigatorKey.currentState != null) {
      _toastRepo.showWarning(msg, _navigatorKey.currentState!.context);
    }
  }

  static void success(String msg) {
    if (_navigatorKey.currentState != null) {
      _toastRepo.showSuccess(msg, _navigatorKey.currentState!.context);
    }
  }

  static void normal(String msg) {
    if (_navigatorKey.currentState != null) {
      _toastRepo.showNormalMsg(msg, _navigatorKey.currentState!.context);
    }
  }
}

// enum _ToastType { normal, error, success, warning }
