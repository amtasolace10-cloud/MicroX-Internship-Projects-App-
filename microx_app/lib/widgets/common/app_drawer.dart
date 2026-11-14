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
import 'primary_button.dart';
import 'secondary_button.dart';

/// Side menu with all website menu items.
class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key, required this.currentRoute});

  final String currentRoute;

  void _open(BuildContext context, NavItemModel item) {
    Navigator.of(context).pop(); // close drawer
    if (item.externalUrl != null) {
      Launcher.open(context, item.externalUrl!);
    } else if (item.route != null) {
      AppNavigator.go(context, item.route!, current: currentRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    final pad = Responsive.hPad(context);
    return Drawer(
      width: Responsive.width(context) * 0.82,
      backgroundColor: AppColors.background,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(pad, 16, 8, 8),
              child: Row(
                children: [
                  const MicroxLogo(),
                  const Spacer(),
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.close_rounded, color: Colors.white),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: pad),
                children: [
                  for (final item in SiteContent.navItems)
                    _DrawerItem(
                      label: item.label,
                      selected: item.route == currentRoute,
                      onTap: () => _open(context, item),
                    ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(pad),
              child: Column(
                children: [
                  SecondaryButton(
                    label: 'Team Portal',
                    icon: Icons.lock_outline_rounded,
                    expanded: true,
                    onPressed: () {
                      Navigator.of(context).pop();
                      AppNavigator.go(context, AppRoutes.portal,
                          current: currentRoute);
                    },
                  ),
                  SizedBox(height: Responsive.gap(context, 10)),
                  PrimaryButton(
                    label: 'Let’s talk',
                    expanded: true,
                    onPressed: () {
                      Navigator.of(context).pop();
                      AppNavigator.go(context, AppRoutes.contact,
                          current: currentRoute);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  const _DrawerItem({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: Responsive.gap(context, 14)),
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: AppColors.border)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                label,
                style: AppText.h3(context).copyWith(
                  fontWeight: FontWeight.w400,
                  color: selected ? AppColors.redAccent : Colors.white,
                ),
              ),
            ),
            Icon(Icons.arrow_forward_rounded,
                size: Responsive.fs(context, 18), color: AppColors.textMuted),
          ],
        ),
      ),
    );
  }
}
