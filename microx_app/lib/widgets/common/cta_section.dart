import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/routes/app_router.dart';
import '../../core/routes/app_routes.dart';
import '../../data/site_content.dart';
import 'primary_button.dart';
import 'section_container.dart';
import 'section_header.dart';

/// "A good idea deserves a great team." + Start a conversation button.
class CtaSection extends StatelessWidget {
  const CtaSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      color: const Color(0xFF140A0B),
      verticalPadding: 56,
      child: Column(
        children: [
          const SectionHeader(
            eyebrow: SiteContent.ctaEyebrow,
            title: SiteContent.ctaTitle,
            highlight: SiteContent.ctaHighlight,
            subtitle: SiteContent.ctaText,
            centered: true,
          ),
          const SizedBox(height: 28),
          PrimaryButton(
            label: SiteContent.ctaButton,
            onPressed: () => AppNavigator.go(context, AppRoutes.contact),
          ),
          const SizedBox(height: 4),
          const Divider(color: AppColors.border, height: 1, thickness: 0),
        ],
      ),
    );
  }
}
