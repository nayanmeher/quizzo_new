
import 'package:flutter/material.dart';

extension DarkMode on BuildContext{

  get isDarkMode{
    return Theme.of(this).brightness == Brightness.dark;
  }
}