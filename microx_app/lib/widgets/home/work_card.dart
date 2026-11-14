import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';
import '../../data/models/work_model.dart';

/// Project card: picture on top, type, name and one line of text.
class WorkCard extends StatelessWidget {
  const WorkCard({super.key, required this.work, required this.onTap});

  final WorkModel work;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.card,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.border),
            borderRadius: BorderRadius.circular(16),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Preview(work: work),
              Padding(
                padding: EdgeInsets.all(Responsive.gap(context, 18)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(work.type.toUpperCase(),
                              style: AppText.eyebrow(context)
                                  .copyWith(color: AppColors.redAccent)),
                        ),
                        Text('Sample concept', style: AppText.small(context)),
                      ],
                    ),
                    SizedBox(height: Responsive.gap(context, 8)),
                    Text(work.title, style: AppText.h3(context)),
                    SizedBox(height: Responsive.gap(context, 8)),
                    Text(work.description, style: AppText.body(context)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Picture made with widgets (looks like the website project previews).
class _Preview extends StatelessWidget {
  const _Preview({required this.work});

  final WorkModel work;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 10,
      child: Container(
        padding: EdgeInsets.all(Responsive.gap(context, 18)),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: work.gradient,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(work.brandLabel,
                style: AppText.small(context).copyWith(color: Colors.white70)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  work.previewHeadline,
                  style: AppText.h2(context)
                      .copyWith(fontSize: Responsive.fs(context, 24)),
                ),
                if (work.stats.isNotEmpty) ...[
                  SizedBox(height: Responsive.gap(context, 12)),
                  Row(
                    children: [
                      for (final s in work.stats)
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                right: Responsive.gap(context, 8)),
                            padding: EdgeInsets.all(Responsive.gap(context, 10)),
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.07),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(s.label, style: AppText.small(context)),
                                Text(s.value,
                                    style: AppText.h3(context)),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}
