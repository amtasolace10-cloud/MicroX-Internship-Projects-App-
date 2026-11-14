import 'package:flutter/material.dart';

import '../core/routes/app_routes.dart';
import '../widgets/common/announcement_banner.dart';
import '../widgets/common/app_drawer.dart';
import '../widgets/common/app_footer.dart';
import '../widgets/common/app_navbar.dart';
import '../widgets/common/ask_microx_button.dart';
import '../widgets/common/cta_section.dart';
import '../widgets/common/process_section.dart';
import '../widgets/services/services_hero.dart';
import '../widgets/services/services_list_section.dart';

/// Services screen: heading, all services, how we work, call to action.
class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppNavbar(),
      endDrawer: AppDrawer(currentRoute: AppRoutes.services),
      floatingActionButton: AskMicroxButton(),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              AnnouncementBanner(),
              ServicesHero(),
              ServicesListSection(),
              ProcessSection(),
              CtaSection(),
              AppFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
