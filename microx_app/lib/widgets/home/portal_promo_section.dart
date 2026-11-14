import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/routes/app_router.dart';
import '../../core/routes/app_routes.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/launcher.dart';
import '../../core/utils/responsive.dart';
import '../../data/site_content.dart';
import '../common/section_container.dart';
import '../common/section_header.dart';
import '../common/primary_button.dart';
import '../common/text_arrow_button.dart';

/// "Your work. Your team. One workspace." card for the Team Portal.
class PortalPromoSection extends StatelessWidget {
  const PortalPromoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      verticalPadding: 40,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(Responsive.gap(context, 22)),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.border),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Eyebrow(text: SiteContent.portalEyebrow),
            SizedBox(height: Responsive.gap(context, 14)),
            Text(SiteContent.portalTitle, style: AppText.h2(context)),
            SizedBox(height: Responsive.gap(context, 12)),
            Text(SiteContent.portalText, style: AppText.body(context)),
            SizedBox(height: Responsive.gap(context, 20)),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: Responsive.gap(context, 8),
              runSpacing: Responsive.gap(context, 6),
              children: [
                PrimaryButton(
                  label: 'Open Team Portal',
                  onPressed: () => AppNavigator.go(context, AppRoutes.portal),
                ),
                TextArrowButton(
                  label: 'Submit your project',
                  icon: Icons.north_east_rounded,
                  onPressed: () =>
                      Launcher.open(context, SiteContent.submitProjectUrl),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
