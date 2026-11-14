import 'package:flutter/material.dart';

import '../../core/utils/responsive.dart';

/// Gives every section the same side padding and a maximum width
/// (so it still looks good on big phones / tablets).
class SectionContainer extends StatelessWidget {
  const SectionContainer({
    super.key,
    required this.child,
    this.color,
    this.verticalPadding = 48,
  });

  final Widget child;
  final Color? color;
  final double verticalPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: color,
      padding: EdgeInsets.symmetric(
        horizontal: Responsive.hPad(context),
        vertical: Responsive.gap(context, verticalPadding),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 640),
          child: child,
        ),
      ),
    );
  }
}
