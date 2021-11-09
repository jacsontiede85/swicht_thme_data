import 'package:flutter/material.dart';



var darkTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: AppBarTheme(
      elevation: 0.9,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      // backgroundColor: Colors.deepOrangeAccent
  ),
);


var darkOrangeTheme = ThemeData(
  primarySwatch: Colors.red,
  brightness: Brightness.dark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: AppBarTheme(
      elevation: 0.9,
      backgroundColor: Colors.deepOrangeAccent,
      foregroundColor: Colors.white //here you can give the text color
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: Colors.deepOrangeAccent
  ),
);



var lightTheme = ThemeData(
  primarySwatch: Colors.deepOrange,
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: Colors.white,
      backgroundColor: Colors.deepOrangeAccent
  ),
);