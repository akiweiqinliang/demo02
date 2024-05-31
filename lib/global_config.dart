// import 'package:demo02/common/theme_notifier.dart';

import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

class GlobalConfig extends ChangeNotifier {

  static bool dark = true;

  bool get isDarkMode => dark;

  static ThemeData get currentTheme => dark ? themeData : lightThemeData;

  void toggleTheme() {
      dark = !dark;
      notifyListeners();
  }

  // static bool dark = true;
  static ThemeData themeData = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black38, 
    // scaffoldBackgroundColor: Colors.grey.shade900, // 自定义背景颜色

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0, // 去除阴影
      foregroundColor: Colors.white, // 设置前景色，如标题和图标颜色
    )
  );
  static ThemeData lightThemeData = ThemeData.light().copyWith(

    appBarTheme: const AppBarTheme(
     backgroundColor: Colors.transparent, 
     elevation: 0, // 去除阴影
      foregroundColor: Colors.black, // 设置前景色，如标题和图标颜色
    )
  );

  static Color get searchBackgroundColor => dark ? Colors.white10 : Colors.grey.shade100;
  // static Color cardBackgroundColor = const Color(0xFF222222);  
  static Color get cardBackgroundColor => dark ? Colors.white10 : Colors.white;  
  static Color get fontColor => dark ? Colors.white30 : Colors.black38;
  static Color get borderColor => dark ? Colors.white12 : Colors.black12;
  static Color get fontColor2 => dark ? Colors.white70 : Colors.black87;
  static Color get fontColor1 => dark ? Colors.white : Colors.black;
  static Color appBarColor = Colors.transparent;
  // 消息图标颜色
  // borderColor
  static double padding1 = 16.0; //最常用外围边距

  static Color get btnBgColor => dark ? Colors.blue.withOpacity(0.2) : Colors.blue.withOpacity(0.2);
  // 金色系
  
}

