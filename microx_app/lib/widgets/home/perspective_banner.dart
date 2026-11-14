import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';
import '../../core/constants/app_colors.dart';
import '../../core/routes/app_router.dart';
import '../../core/routes/app_routes.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';
import '../../data/site_content.dart';
import '../common/safe_network_image.dart';
import '../common/section_container.dart';
import '../common/section_header.dart';
import '../common/text_arrow_button.dart';

/// "A different perspective. A world of possibility." picture banner.
class PerspectiveBanner extends StatelessWidget {
  const PerspectiveBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      verticalPadding: 24,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            Positioned.fill(
              child: SafeNetworkImage(url: AppAssets.mountains, grayscale: true),
            ),
            Positioned.fill(
              child: ColoredBox(color: Colors.black.withOpacity(0.55)),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(Responsive.gap(context, 24)),
              constraints: BoxConstraints(
                minHeight: Responsive.height(context) * 0.38,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Eyebrow(text: SiteContent.perspectiveEyebrow),
                  SizedBox(height: Responsive.gap(context, 14)),
                  Text(SiteContent.perspectiveTitle,
                      style: AppText.h2(context)),
                  SizedBox(height: Responsive.gap(context, 8)),
                  TextArrowButton(
                    label: 'Meet MicroX',
                    onPressed: () => AppNavigator.go(context, AppRoutes.studio),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
