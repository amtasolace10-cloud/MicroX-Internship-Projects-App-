import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';
import '../../data/models/team_member_model.dart';
import '../common/safe_network_image.dart';

/// One person card (photo, role, name, short text).
class TeamCard extends StatelessWidget {
  const TeamCard({super.key, required this.member});

  final TeamMemberModel member;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.border),
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SafeNetworkImage(
              url: member.photoUrl,
              fallback: Center(
                child: Text(
                  member.initials,
                  style: AppText.display(context)
                      .copyWith(color: AppColors.textMuted),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(Responsive.gap(context, 16)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${member.index} · ${member.department}'.toUpperCase(),
                      style: AppText.eyebrow(context)
                          .copyWith(color: AppColors.redAccent)),
                  SizedBox(height: Responsive.gap(context, 6)),
                  Text(member.name, style: AppText.h3(context)),
                  Text(member.role, style: AppText.small(context)),
                  SizedBox(height: Responsive.gap(context, 8)),
                  Expanded(
                    child: Text(
                      member.bio,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: AppText.small(context),
                    ),
                  ),
                  Text(member.tag,
                      style: AppText.small(context)
                          .copyWith(color: Colors.white)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
