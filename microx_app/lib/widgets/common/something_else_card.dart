import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/routes/app_router.dart';
import '../../core/routes/app_routes.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';
import '../../data/site_content.dart';
import 'text_arrow_button.dart';

/// "Have something else in mind? ..." card shown after the services list.
class SomethingElseCard extends StatelessWidget {
  const SomethingElseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(Responsive.gap(context, 18)),
      decoration: BoxDecoration(
        color: AppColors.pill,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.auto_awesome_rounded,
                  color: AppColors.redAccent, size: 20),
              SizedBox(width: Responsive.gap(context, 10)),
              Expanded(
                child: Text(SiteContent.somethingElse,
                    style: AppText.body(context)
                        .copyWith(color: Colors.white)),
              ),
            ],
          ),
          SizedBox(height: Responsive.gap(context, 6)),
          TextArrowButton(
            label: 'Talk to our team',
            onPressed: () => AppNavigator.go(context, AppRoutes.contact),
          ),
        ],
      ),
    );
  }
}
