import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/routes/app_router.dart';
import '../../core/routes/app_routes.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/launcher.dart';
import '../../core/utils/responsive.dart';
import '../../data/models/nav_item_model.dart';
import '../../data/site_content.dart';
import 'microx_logo.dart';
import 'section_container.dart';

/// Footer: logo, page links, social buttons, copyright.
class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      color: const Color(0xFF0B0B0B),
      verticalPadding: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const MicroxLogo(size: 30),
          SizedBox(height: Responsive.gap(context, 12)),
          Text(SiteContent.footerTagline, style: AppText.body(context)),
          SizedBox(height: Responsive.gap(context, 4)),
          Text(SiteContent.footerLocation, style: AppText.small(context)),
          SizedBox(height: Responsive.gap(context, 28)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _LinkColumn(
                    title: 'Explore', items: SiteContent.footerExplore),
              ),
              Expanded(
                child: _LinkColumn(
                    title: 'Connect', items: SiteContent.footerConnect),
              ),
            ],
          ),
          SizedBox(height: Responsive.gap(context, 24)),
          Text('Stay in the loop', style: _heading(context)),
          SizedBox(height: Responsive.gap(context, 12)),
          Wrap(
            spacing: Responsive.gap(context, 10),
            runSpacing: Responsive.gap(context, 10),
            children: [
              _SocialChip(
                icon: Icons.article_outlined,
                label: 'Studio notes',
                onTap: () => AppNavigator.go(context, AppRoutes.insights),
              ),
              _SocialChip(
                icon: Icons.business_center_outlined,
                label: 'LinkedIn',
                onTap: () => Launcher.open(context, SiteContent.linkedInUrl),
              ),
              _SocialChip(
                icon: Icons.code_rounded,
                label: 'GitHub',
                onTap: () => Launcher.open(context, SiteContent.githubUrl),
              ),
              _SocialChip(
                icon: Icons.mail_outline_rounded,
                label: 'Email',
                onTap: () => Launcher.open(context, SiteContent.email),
              ),
            ],
          ),
          SizedBox(height: Responsive.gap(context, 28)),
          const Divider(color: AppColors.border, height: 1),
          SizedBox(height: Responsive.gap(context, 16)),
          Text(SiteContent.copyright, style: AppText.small(context)),
          SizedBox(height: Responsive.gap(context, 8)),
          Row(
            children: [
              _SmallLink(
                label: 'Privacy',
                onTap: () => AppNavigator.go(context, AppRoutes.privacy),
              ),
              SizedBox(width: Responsive.gap(context, 18)),
              _SmallLink(
                label: 'Team portal',
                onTap: () => AppNavigator.go(context, AppRoutes.portal),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static TextStyle _heading(BuildContext c) => AppText.eyebrow(c).copyWith(
        color: AppColors.textMuted,
      );
}

class _LinkColumn extends StatelessWidget {
  const _LinkColumn({required this.title, required this.items});

  final String title;
  final List<NavItemModel> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title.toUpperCase(), style: AppFooter._heading(context)),
        SizedBox(height: Responsive.gap(context, 8)),
        for (final item in items)
          InkWell(
            onTap: () => AppNavigator.go(context, item.route ?? AppRoutes.home),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: Responsive.gap(context, 7)),
              child: Text(
                item.label,
                style: AppText.body(context).copyWith(color: Colors.white),
              ),
            ),
          ),
      ],
    );
  }
}

class _SocialChip extends StatelessWidget {
  const _SocialChip({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(30),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: Responsive.gap(context, 14),
          vertical: Responsive.gap(context, 9),
        ),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.border),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: Responsive.fs(context, 16), color: Colors.white),
            SizedBox(width: Responsive.gap(context, 8)),
            Text(label, style: AppText.small(context).copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

class _SmallLink extends StatelessWidget {
  const _SmallLink({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: Responsive.gap(context, 6)),
        child: Text(label, style: AppText.small(context)),
      ),
    );
  }
}
