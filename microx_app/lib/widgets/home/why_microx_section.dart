import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/routes/app_router.dart';
import '../../core/routes/app_routes.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';
import '../../data/site_content.dart';
import '../common/primary_button.dart';
import '../common/safe_network_image.dart';
import '../common/section_container.dart';
import '../common/section_header.dart';

/// "Good ideas. Better together." with 3 reasons (icon + title).
class WhyMicroxSection extends StatelessWidget {
  const WhyMicroxSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      color: AppColors.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            eyebrow: SiteContent.whyEyebrow,
            title: SiteContent.whyTitle,
            highlight: SiteContent.whyHighlight,
            subtitle: SiteContent.whyText,
          ),
          SizedBox(height: Responsive.gap(context, 22)),
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: AspectRatio(
              aspectRatio: 16 / 10,
              child: SafeNetworkImage(url: AppAssets.workspace),
            ),
          ),
          SizedBox(height: Responsive.gap(context, 20)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final point in SiteContent.whyPoints)
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: Responsive.gap(context, 8)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(Responsive.gap(context, 10)),
                          decoration: BoxDecoration(
                            color: AppColors.iconTile,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(point.icon,
                              size: Responsive.fs(context, 22),
                              color: AppColors.iconTileFg),
                        ),
                        SizedBox(height: Responsive.gap(context, 10)),
                        Text(point.title,
                            style: AppText.body(context)
                                .copyWith(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
            ],
          ),
          SizedBox(height: Responsive.gap(context, 24)),
          PrimaryButton(
            label: 'Build something with us',
            onPressed: () => AppNavigator.go(context, AppRoutes.contact),
          ),
        ],
      ),
    );
  }
}
