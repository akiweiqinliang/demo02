import 'package:flutter/material.dart';

class GlobalConfig {
  static bool dark = true;
  static ThemeData themeData = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black38, 
    
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0, // 去除阴影
      foregroundColor: Colors.white, // 设置前景色，如标题和图标颜色
    )
  );
  static Color searchBackgroundColor = Colors.white10;
  // static Color cardBackgroundColor = const Color(0xFF222222);  
  static Color cardBackgroundColor = Colors.white10;  
  static Color fontColor = Colors.white30;
  static Color secondFontColor = Colors.white70;
  static Color appBarColor = Colors.transparent;

  // 消息图标颜色
}
