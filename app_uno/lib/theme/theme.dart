import 'package:flutter/material.dart';

class AppColors {
  static const Color backgroundNavy = Color(0xFF0C2C42); // Azul oscuro Figma
  static const Color primaryRed = Color(0xFFE43D2F); // Rojo Figma
  static const Color neutral0 = Color(0xFFFFFFFF);
}

final ThemeData miTemaPersonalizado = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.backgroundNavy,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryRed,
    primary: AppColors.primaryRed,
    surface: AppColors.backgroundNavy,
  ),
);
