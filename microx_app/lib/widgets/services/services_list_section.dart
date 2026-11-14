import 'package:flutter/material.dart';

import '../../core/utils/launcher.dart';
import '../../core/utils/responsive.dart';
import '../../data/site_content.dart';
import '../common/section_container.dart';
import '../common/service_card.dart';
import '../common/something_else_card.dart';

/// All 5 services of the website (nothing skipped) + "Have something else in mind?".
class ServicesListSection extends StatelessWidget {
  const ServicesListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      verticalPadding: 8,
      child: Column(
        children: [
          for (final service in SiteContent.services) ...[
            ServiceCard(
              service: service,
              onTap: () => Launcher.open(context, service.url),
            ),
            SizedBox(height: Responsive.gap(context, 14)),
          ],
          const SomethingElseCard(),
        ],
      ),
    );
  }
}
