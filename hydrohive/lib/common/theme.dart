// lib/common/theme.dart
import 'package:flutter/material.dart';

class AppColors {
  static const background = Color(0xFF232b3d);
  static const card = Color(0xFF233244);
  static const accent = Colors.orange;
  static const textPrimary = Colors.white;
  static const textSecondary = Colors.amberAccent;
}

final ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.background,
  primaryColor: AppColors.accent,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.accent,
    background: AppColors.background,
    secondary: AppColors.card,
  ),
  textTheme: const TextTheme(
    headline6: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.textPrimary),
    bodyText2: TextStyle(fontSize: 16, color: AppColors.textPrimary),
    subtitle1: TextStyle(fontSize: 14, color: AppColors.textSecondary),
  ),
  fontFamily: 'Poppins', // Or your chosen font
);
