import 'package:flutter/material.dart';
import 'package:uptodo/core/constant/colors/Appcolors.dart';

class AppThemes {
  const AppThemes._();

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.background,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: AppColors.textPrimary23),
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: AppColors.textPrimary23),
        bodyLarge: TextStyle(color: AppColors.textPrimary23),
        bodySmall: TextStyle(color: AppColors.textPrimary23),
      ),
    );
  }

  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.darkBackground,
        brightness: Brightness.dark,
        primaryContainer: AppColors.ContainerIn,
        onPrimaryContainer: AppColors.textPrimarydarkff,
        tertiary: AppColors.ButtonActive,
      ),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.darkBackground,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.textPrimarydark.withOpacity(.4),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.ButtonActive,
          // textStyle: TextStyle(
          //   color: AppColors.ButtonText,
          // ),
        ),
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: AppColors.textPrimarydark.withOpacity(.87),
        ),
        bodyLarge: TextStyle(color: AppColors.textPrimarydark.withOpacity(.78)),
        bodySmall: TextStyle(color: AppColors.bodysmalltext),
      ),
    );
  }
}
