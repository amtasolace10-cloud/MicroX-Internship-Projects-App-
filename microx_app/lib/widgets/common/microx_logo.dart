import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/app_colors.dart';
import '../../core/utils/responsive.dart';

/// "microx." text logo (the "x." is red like on the website).
class MicroxLogo extends StatelessWidget {
  const MicroxLogo({super.key, this.size = 26});

  final double size;

  @override
  Widget build(BuildContext context) {
    final fs = Responsive.fs(context, size);
    return Text.rich(
      TextSpan(
        text: 'micro',
        style: GoogleFonts.outfit(
          fontSize: fs,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.5,
          color: AppColors.textPrimary,
        ),
        children: [
          TextSpan(
            text: 'x.',
            style: GoogleFonts.outfit(
              fontSize: fs,
              fontWeight: FontWeight.w500,
              color: AppColors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
