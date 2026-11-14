import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_colors.dart';
import '../utils/responsive.dart';

/// All text styles in one place. Font sizes scale with the screen width.
class AppText {
  AppText._();

  static TextStyle display(BuildContext c) => GoogleFonts.outfit(
        fontSize: Responsive.fs(c, 44),
        height: 1.06,
        letterSpacing: -1.4,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary,
      );

  static TextStyle h2(BuildContext c) => GoogleFonts.outfit(
        fontSize: Responsive.fs(c, 32),
        height: 1.1,
        letterSpacing: -0.8,
        fontWeight: FontWeight.w400,
        color: AppColors.textPrimary,
      );

  static TextStyle h2Emphasis(BuildContext c) => GoogleFonts.outfit(
        fontSize: Responsive.fs(c, 32),
        height: 1.1,
        letterSpacing: -0.8,
        fontStyle: FontStyle.italic,
        fontWeight: FontWeight.w300,
        color: AppColors.textSecondary,
      );

  static TextStyle h3(BuildContext c) => GoogleFonts.outfit(
        fontSize: Responsive.fs(c, 21),
        height: 1.2,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
      );

  static TextStyle body(BuildContext c) => GoogleFonts.outfit(
        fontSize: Responsive.fs(c, 15),
        height: 1.5,
        fontWeight: FontWeight.w300,
        color: AppColors.textSecondary,
      );

  static TextStyle small(BuildContext c) => GoogleFonts.outfit(
        fontSize: Responsive.fs(c, 12.5),
        height: 1.4,
        fontWeight: FontWeight.w300,
        color: AppColors.textSecondary,
      );

  static TextStyle eyebrow(BuildContext c) => GoogleFonts.outfit(
        fontSize: Responsive.fs(c, 11),
        letterSpacing: 1.6,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondary,
      );

  static TextStyle button(BuildContext c) => GoogleFonts.outfit(
        fontSize: Responsive.fs(c, 14),
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
      );
}
