import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/routes/app_router.dart';
import '../../core/routes/app_routes.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';
import '../../data/site_content.dart';
import '../common/announcement_banner.dart';
import '../common/primary_button.dart';
import '../common/safe_network_image.dart';
import '../common/section_header.dart';
import '../common/text_arrow_button.dart';

/// Big first section: mountain picture, heading, intro text and 2 buttons.
class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final minHeight = Responsive.height(context) * 0.82;
    return Stack(
      children: [
        Positioned.fill(
          child: SafeNetworkImage(
            url: AppAssets.mountains,
            grayscale: true,
            fallback: const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF3A1A1E), Color(0xFF1A1A1A)],
                ),
              ),
            ),
          ),
        ),
        // dark red tint like the website
        Positioned.fill(
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  const Color(0xFF3A0A10).withOpacity(0.72),
                  Colors.black.withOpacity(0.35),
                  AppColors.background.withOpacity(0.92),
                ],
                stops: const [0, 0.5, 1],
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          constraints: BoxConstraints(minHeight: minHeight),
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.hPad(context),
            vertical: Responsive.gap(context, 28),
          ),
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 640),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const AnnouncementBanner(rounded: true),
                SizedBox(height: Responsive.gap(context, 36)),
                const Eyebrow(text: SiteContent.heroEyebrow, centered: true),
                SizedBox(height: Responsive.gap(context, 18)),
                Text(
                  SiteContent.heroTitle,
                  textAlign: TextAlign.center,
                  style: AppText.display(context),
                ),
                SizedBox(height: Responsive.gap(context, 18)),
                Text(
                  SiteContent.heroText,
                  textAlign: TextAlign.center,
                  style: AppText.body(context).copyWith(color: Colors.white70),
                ),
                SizedBox(height: Responsive.gap(context, 26)),
                Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: Responsive.gap(context, 8),
                  runSpacing: Responsive.gap(context, 6),
                  children: [
                    PrimaryButton(
                      label: 'Start a project',
                      onPressed: () =>
                          AppNavigator.go(context, AppRoutes.contact),
                    ),
                    TextArrowButton(
                      label: 'Explore our work',
                      onPressed: () => AppNavigator.go(context, AppRoutes.work),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
