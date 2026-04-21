import 'package:flutter/material.dart';

abstract class AppButtonStyle {
  static final ButtonStyle linkButton = ButtonStyle(
    foregroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 90, 150, 255)),
    textStyle: WidgetStateProperty.all(const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)
    ),
  );
}