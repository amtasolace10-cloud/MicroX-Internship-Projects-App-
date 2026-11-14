import 'package:flutter/material.dart';

import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';
import '../../data/site_content.dart';
import '../common/section_container.dart';
import '../common/section_header.dart';

/// "Ambitious ideas. Thoughtfully built." heading of the Services page.
class ServicesHero extends StatelessWidget {
  const ServicesHero({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      verticalPadding: 44,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Eyebrow(text: SiteContent.servicesEyebrow),
          SizedBox(height: Responsive.gap(context, 20)),
          Text(SiteContent.servicesPageTitle, style: AppText.display(context)),
          SizedBox(height: Responsive.gap(context, 18)),
          Text(SiteContent.servicesPageText, style: AppText.body(context)),
        ],
      ),
    );
  }
}
