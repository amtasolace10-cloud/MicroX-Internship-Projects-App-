import 'package:flutter/material.dart';

/// Small helper so no screen uses fixed sizes.
/// Everything is calculated from MediaQuery (design base width = 390).
class Responsive {
  Responsive._();

  static double width(BuildContext c) => MediaQuery.sizeOf(c).width;
  static double height(BuildContext c) => MediaQuery.sizeOf(c).height;

  /// 1.0 on a 390px phone, smaller/larger on other phones (kept in a safe range).
  static double scale(BuildContext c) =>
      (width(c) / 390).clamp(0.85, 1.3).toDouble();

  /// Scaled font size / spacing.
  static double fs(BuildContext c, double base) => base * scale(c);
  static double gap(BuildContext c, double base) => base * scale(c);

  /// Left/right page padding.
  static double hPad(BuildContext c) =>
      (width(c) * 0.058).clamp(16.0, 40.0).toDouble();

  static bool isTablet(BuildContext c) => width(c) >= 700;
}
