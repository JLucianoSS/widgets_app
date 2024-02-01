

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

  AppTheme({ 
    this.selectedColor = 0
  }): assert( selectedColor > 0, 'Selected color must be greater than 0'),
      assert( selectedColor < colorList.length, 'Selected color must be less or equal than ${ colorList.length -1 }');
  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedColor ],
  );
  
}