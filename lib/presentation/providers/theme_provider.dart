


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';



// Listado de colores inmutables
final colorListProvider = Provider((ref) => colorList);

// Un simple booleano
final isDarkModeProvider = StateProvider<bool>((ref) => false);


// Un simple booleano
final selectedColorProvider = StateProvider<int>((ref) => 0);