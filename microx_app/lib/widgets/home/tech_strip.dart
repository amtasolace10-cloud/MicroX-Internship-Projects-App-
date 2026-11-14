import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/routes/app_router.dart';
import '../../core/routes/app_routes.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';
import '../../data/site_content.dart';
import '../common/section_container.dart';
import '../common/text_arrow_button.dart';

/// Strip under the hero: slogan + "Our building blocks" (React, Node.js ...).
/// (The website has no numbers/stats bar, so this is the matching section.)
class TechStrip extends StatelessWidget {
  const TechStrip({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      color: AppColors.surface,
      verticalPadding: 32,
      child: Column(
        children: [
          Text(SiteContent.stripLine1,
              textAlign: TextAlign.center, style: AppText.eyebrow(context)),
          SizedBox(height: Responsive.gap(context, 6)),
          Text(SiteContent.stripLine2,
              textAlign: TextAlign.center,
              style: AppText.eyebrow(context)
                  .copyWith(color: AppColors.redAccent)),
          SizedBox(height: Responsive.gap(context, 24)),
          Text('OUR BUILDING BLOCKS',
              style: AppText.eyebrow(context)
                  .copyWith(color: AppColors.textMuted)),
          SizedBox(height: Responsive.gap(context, 14)),
          Wrap(
            alignment: WrapAlignment.center,
            spacing: Responsive.gap(context, 10),
            runSpacing: Responsive.gap(context, 10),
            children: [
              for (final name in SiteContent.buildingBlocks)
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Responsive.gap(context, 16),
                    vertical: Responsive.gap(context, 9),
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.background,
                    border: Border.all(color: AppColors.border),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(name,
                      style: AppText.body(context)
                          .copyWith(color: Colors.white)),
                ),
            ],
          ),
          SizedBox(height: Responsive.gap(context, 14)),
          TextArrowButton(
            label: 'Explore our capabilities',
            onPressed: () => AppNavigator.go(context, AppRoutes.services),
          ),
        ],
      ),
    );
  }
}
