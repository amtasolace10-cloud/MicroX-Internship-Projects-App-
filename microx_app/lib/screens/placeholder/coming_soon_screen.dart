import 'package:flutter/material.dart';

import '../../core/routes/app_router.dart';
import '../../core/routes/app_routes.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/responsive.dart';
import '../../widgets/common/primary_button.dart';

/// Temporary page for screens that other teammates are building
/// (Work, Studio, Team, Community, Careers, Portal ...).
/// Replace the route in app_router.dart when their screen is ready.
class ComingSoonScreen extends StatelessWidget {
  const ComingSoonScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(Responsive.hPad(context)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title, style: AppText.h2(context)),
              SizedBox(height: Responsive.gap(context, 10)),
              Text(
                'This page is being built by another team member.',
                textAlign: TextAlign.center,
                style: AppText.body(context),
              ),
              SizedBox(height: Responsive.gap(context, 24)),
              PrimaryButton(
                label: 'Back to Home',
                onPressed: () => AppNavigator.go(context, AppRoutes.home),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
