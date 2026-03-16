import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  // ─────────────────────────────────────────────────────
  // PRIMARY BRAND PALETTE
  // ─────────────────────────────────────────────────────
  static const Color primary = Color(0xFF6C63FF);
  static const Color primaryLight = Color(0xFF9D9AFF);
  static const Color primaryDark = Color(0xFF3A34DB);
  static const Color primaryContainer = Color(0xFFE8E7FF);
  static const Color onPrimary = Colors.white;
  static const Color onPrimaryContainer = Color(0xFF2D2866);

  // ─────────────────────────────────────────────────────
  // SECONDARY & ACCENT
  // ─────────────────────────────────────────────────────
  static const Color secondary = Color(0xFF03DAC6);
  static const Color secondaryContainer = Color(0xFFB8F0E8);
  static const Color onSecondary = Color(0xFF00332E);
  static const Color accent = Color(0xFFFF6584);
  static const Color accentContainer = Color(0xFFFFE6EB);

  // ─────────────────────────────────────────────────────
  // SEMANTIC COLORS
  // ─────────────────────────────────────────────────────
  static const Color success = Color(0xFF2ECC71);
  static const Color successContainer = Color(0xFFD4F5E3);
  static const Color warning = Color(0xFFF39C12);
  static const Color warningContainer = Color(0xFFFFF3E0);
  static const Color error = Color(0xFFE74C3C);
  static const Color errorContainer = Color(0xFFFFE0E0);
  static const Color info = Color(0xFF3498DB);
  static const Color infoContainer = Color(0xFFE1F0FA);

  // ─────────────────────────────────────────────────────
  // BACKGROUND & SURFACE (Light Mode)
  // ─────────────────────────────────────────────────────
  static const Color background = Color(0xFFF8F9FC);
  static const Color surface = Colors.white;
  static const Color surfaceVariant = Color(0xFFEDEEF3);
  static const Color surfaceRaised = Color(0xFFFFFFFF);
  static const Color onBackground = Color(0xFF1A1C23);
  static const Color onSurface = Color(0xFF2D2D3A);
  static const Color onSurfaceVariant = Color(0xFF6B6E7A);

  // ─────────────────────────────────────────────────────
  // TEXT & TYPOGRAPHY
  // ─────────────────────────────────────────────────────
  static const Color textPrimary = Color(0xFF1A1C23);
  static const Color textSecondary = Color(0xFF6B6E7A);
  static const Color textHint = Color(0xFF9A9DA6);
  static const Color textInverse = Colors.white;

  // ─────────────────────────────────────────────────────
  // BORDERS & DIVIDERS
  // ─────────────────────────────────────────────────────
  static const Color border = Color(0xFFE0E2E8);
  static const Color divider = Color(0xFFE8EAF0);
  static const Color borderFocus = primary;

  // ─────────────────────────────────────────────────────
  // TASK-SPECIFIC COLORS
  // ─────────────────────────────────────────────────────
  static const Color taskPending = Color(0xFF6C63FF);
  static const Color taskCompleted = Color(0xFF2ECC71);
  static const Color taskOverdue = Color(0xFFE74C3C);

  // Priority badges
  static const Color priorityLow = Color(0xFF95A5A6);
  static const Color priorityMedium = Color(0xFFF39C12);
  static const Color priorityHigh = Color(0xFFE74C3C);
  static const Color priorityLowBg = Color(0xFFECF0F1);
  static const Color priorityMediumBg = Color(0xFFFFF3E0);
  static const Color priorityHighBg = Color(0xFFFFE0E0);

  // ─────────────────────────────────────────────────────
  // DARK MODE OVERRIDES (optional: use separate class or ThemeExtension)
  // ─────────────────────────────────────────────────────
  static const Color darkBackground = Color(0xFF121418);
  static const Color darkSurface = Color(0xFF1E2027);
  static const Color darkSurfaceVariant = Color(0xFF2A2D36);
  static const Color darkOnBackground = Colors.white;
  static const Color darkOnSurface = Color(0xFFE8EAF0);
  static const Color darkOnSurfaceVariant = Color(0xFF9A9DA6);
  static const Color darkBorder = Color(0xFF3A3D46);
  static const Color darkDivider = Color(0xFF2A2D36);
}
