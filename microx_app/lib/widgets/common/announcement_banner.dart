import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/theme/app_text_styles.dart';
import '../../core/utils/launcher.dart';
import '../../core/utils/responsive.dart';
import '../../data/site_content.dart';

/// "MicroX November Hackathon ..." bar shown under the navbar.
class AnnouncementBanner extends StatelessWidget {
  const AnnouncementBanner({super.key, this.rounded = false});

  final bool rounded; // pill style on top of the hero image

  @override
  Widget build(BuildContext context) {
    return Material(
      color: rounded ? Colors.black.withOpacity(0.45) : AppColors.surface,
      borderRadius: rounded ? BorderRadius.circular(40) : BorderRadius.zero,
      child: InkWell(
        borderRadius: rounded ? BorderRadius.circular(40) : BorderRadius.zero,
        onTap: () => Launcher.open(context, SiteContent.announcementUrl),
        child: Container(
          width: rounded ? null : double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: Responsive.hPad(context),
            vertical: Responsive.gap(context, 10),
          ),
          decoration: rounded
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Colors.white24),
                )
              : null,
          child: Row(
            mainAxisSize: rounded ? MainAxisSize.min : MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                child: Text(
                  SiteContent.announcement,
                  textAlign: TextAlign.center,
                  style: AppText.small(context).copyWith(
                    fontSize: Responsive.fs(context, 11.5),
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(width: Responsive.gap(context, 8)),
              Icon(Icons.north_east_rounded,
                  size: Responsive.fs(context, 13), color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
