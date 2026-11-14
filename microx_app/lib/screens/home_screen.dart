import 'package:flutter/material.dart';

import '../core/routes/app_routes.dart';
import '../core/utils/responsive.dart';
import '../widgets/common/app_drawer.dart';
import '../widgets/common/app_footer.dart';
import '../widgets/common/app_navbar.dart';
import '../widgets/common/ask_microx_button.dart';
import '../widgets/common/cta_section.dart';
import '../widgets/common/process_section.dart';
import '../widgets/home/hero_section.dart';
import '../widgets/home/perspective_banner.dart';
import '../widgets/home/portal_promo_section.dart';
import '../widgets/home/services_preview_section.dart';
import '../widgets/home/tech_strip.dart';
import '../widgets/home/team_preview_section.dart';
import '../widgets/home/why_microx_section.dart';
import '../widgets/home/work_preview_section.dart';

/// Home screen = all home sections one after another.
/// StatefulWidget because it remembers the scroll position
/// (to show / hide the "back to top" button).
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _controller = ScrollController();
  bool _showTopButton = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
  }

  void _onScroll() {
    if (!_controller.hasClients || !mounted) return;
    final show = _controller.offset > Responsive.height(context) * 0.8;
    if (show != _showTopButton) {
      setState(() => _showTopButton = show);
    }
  }

  void _scrollToTop() {
    _controller.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    _controller.removeListener(_onScroll);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppNavbar(),
      endDrawer: const AppDrawer(currentRoute: AppRoutes.home),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (_showTopButton) ...[
            FloatingActionButton.small(
              heroTag: 'back_to_top',
              backgroundColor: const Color(0xFF1E1E1E),
              onPressed: _scrollToTop,
              child: const Icon(Icons.keyboard_arrow_up_rounded,
                  color: Colors.white),
            ),
            const SizedBox(height: 10),
          ],
          const AskMicroxButton(),
        ],
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          controller: _controller,
          child: const Column(
            children: [
              HeroSection(),
              TechStrip(),
              PortalPromoSection(),
              ServicesPreviewSection(),
              PerspectiveBanner(),
              WorkPreviewSection(),
              ProcessSection(),
              WhyMicroxSection(),
              TeamPreviewSection(),
              CtaSection(),
              AppFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
