import 'package:flutter/material.dart';

import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';

/// Plain text link with an arrow: "Explore our work →".
class TextArrowButton extends StatelessWidget {
  const TextArrowButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon = Icons.arrow_forward_rounded,
  });

  final String label;
  final VoidCallback onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(4),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Responsive.gap(context, 8),
          vertical: Responsive.gap(context, 12),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(child: Text(label, style: AppText.button(context))),
            SizedBox(width: Responsive.gap(context, 8)),
            Icon(icon, size: Responsive.fs(context, 17), color: Colors.white),
          ],
        ),
      ),
    );
  }
}
