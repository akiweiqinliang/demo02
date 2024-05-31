import 'package:demo02/global_config.dart';
import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  
  bool _isDarkMode = true;

  bool get isDarkMode => _isDarkMode;

  ThemeData get currentTheme => _isDarkMode ? GlobalConfig.themeData : GlobalConfig.lightThemeData;

  void toggleTheme() {
      _isDarkMode = !_isDarkMode;
      notifyListeners();
  }
}