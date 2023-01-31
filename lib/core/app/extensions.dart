import 'package:flutter/material.dart';

import 'app_constants.dart';

extension NonNullString on String? {
  String get orEmpty {
    if (this == null) {
      return AppConstants.empty;
    } else {
      return this!;
    }
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null) {
      return AppConstants.zero;
    } else {
      return this!;
    }
  }
}

extension BuildContextEx on BuildContext {
  double get height => MediaQuery.of(this).size.height;

  double get width => MediaQuery.of(this).size.width;
}
