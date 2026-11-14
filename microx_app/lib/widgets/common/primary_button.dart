import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';

/// Red button with the small arrow box (same style as "Start a project" / "Let's talk").
class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.compact = false,
    this.expanded = false,
  });

  final String label;
  final VoidCallback onPressed;
  final bool compact; // smaller version used in the navbar
  final bool expanded; // full width

  @override
  Widget build(BuildContext context) {
    final boxSize = Responsive.gap(context, compact ? 22 : 28);
    final style = AppText.button(context).copyWith(
      fontSize: Responsive.fs(context, compact ? 12.5 : 14),
    );

    return Material(
      color: AppColors.red,
      borderRadius: BorderRadius.circular(4),
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: onPressed,
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            Responsive.gap(context, compact ? 10 : 18),
            Responsive.gap(context, compact ? 6 : 10),
            Responsive.gap(context, compact ? 6 : 10),
            Responsive.gap(context, compact ? 6 : 10),
          ),
          child: Row(
            mainAxisSize: expanded ? MainAxisSize.max : MainAxisSize.min,
            mainAxisAlignment: expanded
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(label, style: style, overflow: TextOverflow.ellipsis),
              ),
              SizedBox(width: Responsive.gap(context, compact ? 8 : 16)),
              Container(
                width: boxSize,
                height: boxSize,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.14),
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Icon(
                  Icons.north_east_rounded,
                  size: boxSize * 0.55,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
