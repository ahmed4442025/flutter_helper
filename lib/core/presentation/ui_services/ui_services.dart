import 'package:flutter/material.dart';

class ServicesUi{
  static void setCursor(TextEditingController controller) {
    controller.selection =
        TextSelection.fromPosition(TextPosition(offset: controller.text.length));
  }
}
