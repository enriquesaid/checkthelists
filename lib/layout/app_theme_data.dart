import 'package:flutter/material.dart';

class AppThemeData {
  static String fontFamily = 'ProFont For Powerline';

  static ThemeData themeData = ThemeData(
    primaryColor: const Color(0xff3DC800),
    accentColor: const Color(0xffFFC700),
    primaryColorLight: Colors.grey[200],
    primaryColorDark: const Color(0xff3DC800),
    cardColor: Colors.grey[50],
    textTheme: TextTheme(
      title: TextStyle(
        color: Colors.black,
        fontSize: 20
      ),
      subhead: TextStyle(
        fontFamily: fontFamily,
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),
      subtitle: TextStyle(
        fontSize: 16,
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold
      ),
      body1: TextStyle(
        color: Colors.grey
      ),
      button: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 18
      )
    )
  );

  static ThemeData themeDataDark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green[800],
    accentColor: const Color(0xffFFC700),
    cardColor: Colors.grey[800],
    textTheme: TextTheme(
      title: TextStyle(
        color: Colors.white70,
        fontSize: 20
      ),
      subhead: TextStyle(
        fontFamily: fontFamily,
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white60
      ),
      subtitle: TextStyle(
        fontSize: 16,
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        color: Colors.white60
      ),
      body1: TextStyle(
        color: Colors.white70
      ),
      button: TextStyle(
        fontFamily: fontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 18
      ),
    )
  );
}
