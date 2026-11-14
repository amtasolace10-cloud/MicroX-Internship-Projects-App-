import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';

/// Small red-dot label such as "WHAT WE DO".
class Eyebrow extends StatelessWidget {
  const Eyebrow({super.key, required this.text, this.centered = false});

  final String text;
  final bool centered;

  @override
  Widget build(BuildContext context) {
    final dot = Responsive.gap(context, 6);
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment:
          centered ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Container(
          width: dot,
          height: dot,
          decoration: const BoxDecoration(
            color: AppColors.redAccent,
            shape: BoxShape.circle,
          ),
        ),
        SizedBox(width: Responsive.gap(context, 8)),
        Flexible(
          child: Text(
            text,
            style: AppText.eyebrow(context),
            textAlign: centered ? TextAlign.center : TextAlign.start,
          ),
        ),
      ],
    );
  }
}

/// Eyebrow + big title (+ italic grey highlight) + optional text.
class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    required this.eyebrow,
    required this.title,
    this.highlight,
    this.subtitle,
    this.centered = false,
  });

  final String eyebrow;
  final String title;
  final String? highlight;
  final String? subtitle;
  final bool centered;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:
          centered ? CrossAxisAlignment.center : CrossAxisAlignment.start,
      children: [
        Eyebrow(text: eyebrow, centered: centered),
        SizedBox(height: Responsive.gap(context, 16)),
        Text.rich(
          TextSpan(
            text: title,
            style: AppText.h2(context),
            children: [
              if (highlight != null)
                TextSpan(text: ' $highlight', style: AppText.h2Emphasis(context)),
            ],
          ),
          textAlign: centered ? TextAlign.center : TextAlign.start,
        ),
        if (subtitle != null) ...[
          SizedBox(height: Responsive.gap(context, 14)),
          Text(
            subtitle!,
            style: AppText.body(context),
            textAlign: centered ? TextAlign.center : TextAlign.start,
          ),
        ],
      ],
    );
  }
}
