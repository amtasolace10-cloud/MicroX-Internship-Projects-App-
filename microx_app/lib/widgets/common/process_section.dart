import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';
import '../../data/site_content.dart';
import 'section_container.dart';
import 'section_header.dart';

/// "The way we work": numbered steps (used on Services and Home).
class ProcessSection extends StatelessWidget {
  const ProcessSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionHeader(
            eyebrow: SiteContent.processEyebrow,
            title: SiteContent.processTitle,
            highlight: SiteContent.processHighlight,
            subtitle: SiteContent.processText,
          ),
          SizedBox(height: Responsive.gap(context, 24)),
          for (final step in SiteContent.processSteps)
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: Responsive.gap(context, 12)),
              padding: EdgeInsets.all(Responsive.gap(context, 18)),
              decoration: BoxDecoration(
                color: AppColors.card,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppColors.border),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    step.number,
                    style: AppText.h2(context).copyWith(
                      fontSize: Responsive.fs(context, 30),
                      color: AppColors.redAccent,
                    ),
                  ),
                  SizedBox(width: Responsive.gap(context, 16)),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(step.title, style: AppText.h3(context)),
                        SizedBox(height: Responsive.gap(context, 6)),
                        Text(step.description, style: AppText.body(context)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
