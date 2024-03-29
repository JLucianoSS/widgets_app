

import 'package:flutter/material.dart';

const List<Color> colorList = [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.orange,
  Colors.purple,
  Colors.deepPurple,
  Colors.pink,
  Colors.pinkAccent,
  Colors.red,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  AppTheme({ 
    this.selectedColor = 0,
    this.isDarkMode = false,
  }): assert( selectedColor >= 0, 'Selected color must be greater than 0'),
      assert( selectedColor < colorList.length, 'Selected color must be less or equal than ${ colorList.length -1 }');
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark : Brightness.light,
    colorSchemeSeed: colorList[ selectedColor ],
    appBarTheme: const AppBarTheme(
      centerTitle: true
    )
  );
  
}