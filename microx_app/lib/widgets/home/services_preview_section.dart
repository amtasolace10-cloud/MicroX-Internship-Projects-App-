import 'package:flutter/material.dart';

import '../../core/routes/app_router.dart';
import '../../core/routes/app_routes.dart';
import '../../core/utils/launcher.dart';
import '../../core/utils/responsive.dart';
import '../../data/site_content.dart';
import '../common/primary_button.dart';
import '../common/section_container.dart';
import '../common/section_header.dart';
import '../common/service_card.dart';

/// Home preview of the services (small cards, no long details).
class ServicesPreviewSection extends StatelessWidget {
  const ServicesPreviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final gap = Responsive.gap(context, 12);
    return SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            eyebrow: SiteContent.servicesEyebrow,
            title: SiteContent.servicesPreviewTitle,
            highlight: SiteContent.servicesPreviewHighlight,
            subtitle: SiteContent.servicesPreviewText,
          ),
          SizedBox(height: Responsive.gap(context, 24)),
          for (final service in SiteContent.services) ...[
            ServiceCard(
              service: service,
              compact: true,
              onTap: () => Launcher.open(context, service.url),
            ),
            SizedBox(height: gap),
          ],
          SizedBox(height: Responsive.gap(context, 8)),
          PrimaryButton(
            label: 'See all services',
            onPressed: () => AppNavigator.go(context, AppRoutes.services),
          ),
        ],
      ),
    );
  }
}
