import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';
import '../../data/models/service_model.dart';

/// One service card. Used on Home (compact) and on Services (full, with "Learn more").
class ServiceCard extends StatelessWidget {
  const ServiceCard({
    super.key,
    required this.service,
    required this.onTap,
    this.compact = false,
  });

  final ServiceModel service;
  final VoidCallback onTap;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final tile = Responsive.gap(context, compact ? 42 : 48);
    return Material(
      color: AppColors.card,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        borderRadius: BorderRadius.circular(14),
        onTap: onTap,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(Responsive.gap(context, 18)),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.border),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: tile,
                    height: tile,
                    decoration: BoxDecoration(
                      color: AppColors.iconTile,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(service.icon,
                        size: tile * 0.5, color: AppColors.iconTileFg),
                  ),
                  SizedBox(width: Responsive.gap(context, 14)),
                  Expanded(
                    child: Text(service.title, style: AppText.h3(context)),
                  ),
                  SizedBox(width: Responsive.gap(context, 8)),
                  Text(service.number, style: AppText.small(context)),
                ],
              ),
              SizedBox(height: Responsive.gap(context, 14)),
              Text(service.description, style: AppText.body(context)),
              if (!compact) ...[
                SizedBox(height: Responsive.gap(context, 16)),
                Row(
                  children: [
                    Text(
                      'Learn more',
                      style: AppText.button(context)
                          .copyWith(color: AppColors.redAccent),
                    ),
                    SizedBox(width: Responsive.gap(context, 6)),
                    Icon(Icons.arrow_forward_rounded,
                        size: Responsive.fs(context, 17),
                        color: AppColors.redAccent),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
