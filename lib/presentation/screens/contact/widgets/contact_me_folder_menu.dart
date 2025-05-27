import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:myapp/core/core.dart';
import 'package:myapp/presentation/providers/url/url_provider.dart';
import '../../widgets/widgets.dart';

class ContactMeFolderMenu extends ConsumerWidget {
  const ContactMeFolderMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final urlLaunch = ref.watch(urlProvider);
    return BoxBorderVertical(
      width: ScreenManage.isMobile(context) ? double.infinity : 320,
      child: Column(
        spacing: 10,
        children: [
          const BoxBorderHorizontal(
            height: 50,
            child: ButtonInfo(
              title: 'Contacts',
              arrowIsActive: true,
              isDawer: true,
              isSelected: true,
            ),
          ),
          ButtonInfo(
            title: AppTexts.email,
            onTap: () {
              urlLaunch.launchInBrowser(AppLinks.email);
            },
          ),
          ButtonInfo(
            title: AppTexts.phone,
            onTap: () {
              urlLaunch.launchInBrowser(AppLinks.phone);
            },
          ),
          const BoxBorderHorizontal(
            height: 50,
            child: ButtonInfo(
              title: 'Find-me-also-in',
              arrowIsActive: true,
              isDawer: true,
              isSelected: true,
            ),
          ),
          ButtonInfo(
            title: 'YouTube',
            onTap: () {
              urlLaunch.launchInBrowser(AppLinks.youtube);
            },
          ),
          ButtonInfo(
            title: 'LikedIn',
            onTap: () {
              urlLaunch.launchInBrowser(AppLinks.linkdin);
            },
          ),
          ButtonInfo(
            title: 'GitHub',
            onTap: () {
              urlLaunch.launchInBrowser(AppLinks.gitHub);
            },
          ),
          ButtonInfo(
            title: 'Instagram',
            onTap: () {
              urlLaunch.launchInBrowser(AppLinks.instagram);
            },
          ),
          const SizedBox(height: 5)
        ],
      ),
    );
  }
}
