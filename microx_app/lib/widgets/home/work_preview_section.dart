import 'package:flutter/material.dart';

import '../../core/routes/app_router.dart';
import '../../core/routes/app_routes.dart';
import '../../core/utils/launcher.dart';
import '../../core/utils/responsive.dart';
import '../../data/site_content.dart';
import '../common/primary_button.dart';
import '../common/section_container.dart';
import '../common/section_header.dart';
import 'work_card.dart';

/// "Selected work" preview with 2 project cards.
class WorkPreviewSection extends StatelessWidget {
  const WorkPreviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            eyebrow: SiteContent.workEyebrow,
            title: SiteContent.workTitle,
          ),
          SizedBox(height: Responsive.gap(context, 24)),
          for (final work in SiteContent.works) ...[
            WorkCard(
              work: work,
              onTap: () => Launcher.open(context, work.url),
            ),
            SizedBox(height: Responsive.gap(context, 16)),
          ],
          SizedBox(height: Responsive.gap(context, 4)),
          PrimaryButton(
            label: 'Explore all work',
            onPressed: () => AppNavigator.go(context, AppRoutes.work),
          ),
        ],
      ),
    );
  }
}
