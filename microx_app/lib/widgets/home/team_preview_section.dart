import 'package:flutter/material.dart';

import '../../core/routes/app_router.dart';
import '../../core/routes/app_routes.dart';
import '../../core/utils/responsive.dart';
import '../../data/site_content.dart';
import '../common/primary_button.dart';
import '../common/section_container.dart';
import '../common/section_header.dart';
import 'team_card.dart';

/// "Meet our team": the website has no client reviews, so the people section is shown here.
class TeamPreviewSection extends StatelessWidget {
  const TeamPreviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final cardWidth = Responsive.width(context) * 0.72;
    final cardHeight = cardWidth * 1.8;
    final pad = Responsive.hPad(context);

    return Container(
      padding: EdgeInsets.symmetric(vertical: Responsive.gap(context, 48)),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: pad),
            child: const SectionHeader(
              eyebrow: SiteContent.teamEyebrow,
              title: SiteContent.teamTitle,
              highlight: SiteContent.teamHighlight,
              subtitle: SiteContent.teamText,
            ),
          ),
          SizedBox(height: Responsive.gap(context, 24)),
          SizedBox(
            height: cardHeight,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: pad),
              itemCount: SiteContent.team.length,
              separatorBuilder: (_, __) =>
                  SizedBox(width: Responsive.gap(context, 14)),
              itemBuilder: (context, i) => SizedBox(
                width: cardWidth,
                child: TeamCard(member: SiteContent.team[i]),
              ),
            ),
          ),
          SizedBox(height: Responsive.gap(context, 24)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: pad),
            child: PrimaryButton(
              label: 'Meet the people',
              onPressed: () => AppNavigator.go(context, AppRoutes.team),
            ),
          ),
        ],
      ),
    );
  }
}
