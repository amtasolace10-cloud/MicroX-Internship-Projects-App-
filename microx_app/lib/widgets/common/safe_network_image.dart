import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

/// Network image that never crashes: shows a dark box while loading or if it fails.
class SafeNetworkImage extends StatelessWidget {
  const SafeNetworkImage({
    super.key,
    required this.url,
    this.fit = BoxFit.cover,
    this.grayscale = false,
    this.fallback,
  });

  final String url;
  final BoxFit fit;
  final bool grayscale;
  final Widget? fallback;

  static const ColorFilter _gray = ColorFilter.matrix(<double>[
    0.2126, 0.7152, 0.0722, 0, 0, //
    0.2126, 0.7152, 0.0722, 0, 0, //
    0.2126, 0.7152, 0.0722, 0, 0, //
    0, 0, 0, 1, 0,
  ]);

  @override
  Widget build(BuildContext context) {
    final placeholder = fallback ?? const ColoredBox(color: AppColors.surface);
    final image = Image.network(
      url,
      fit: fit,
      loadingBuilder: (context, child, progress) =>
          progress == null ? child : placeholder,
      errorBuilder: (context, error, stack) => placeholder,
    );
    if (!grayscale) return image;
    return ColorFiltered(colorFilter: _gray, child: image);
  }
}
