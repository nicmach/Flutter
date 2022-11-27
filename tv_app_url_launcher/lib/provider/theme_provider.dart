import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColor: Colors.grey.shade900,
    primaryColorLight: Colors.grey.shade900,
    brightness: Brightness.dark,
    primaryColorDark: Colors.grey.shade900,
    indicatorColor: Colors.white,
    //canvasColor: Colors.grey.shade900,
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.black,
      ),
    )
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    primaryColorLight: Colors.white,
    brightness: Brightness.light,
    primaryColorDark: Colors.white,
    indicatorColor: Colors.black,
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black,
        ),
      )
  );
}