import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/routes/app_router.dart';
import '../../core/routes/app_routes.dart';
import '../../core/utils/responsive.dart';
import 'microx_logo.dart';
import 'primary_button.dart';

/// Top bar: logo on the left, "Let's talk" button + menu icon on the right.
/// The full menu (Services, Work, Studio ...) opens from the menu icon (AppDrawer).
class AppNavbar extends StatelessWidget implements PreferredSizeWidget {
  const AppNavbar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.background,
      toolbarHeight: 64,
      titleSpacing: Responsive.hPad(context),
      title: GestureDetector(
        onTap: () => AppNavigator.go(context, AppRoutes.home),
        child: const MicroxLogo(),
      ),
      actions: [
        PrimaryButton(
          label: 'Let’s talk',
          compact: true,
          onPressed: () => AppNavigator.go(context, AppRoutes.contact),
        ),
        Builder(
          builder: (ctx) => IconButton(
            tooltip: 'Menu',
            onPressed: () => Scaffold.of(ctx).openEndDrawer(),
            icon: const Icon(Icons.menu_rounded, color: Colors.white),
          ),
        ),
        SizedBox(width: Responsive.gap(context, 4)),
      ],
    );
  }
}
