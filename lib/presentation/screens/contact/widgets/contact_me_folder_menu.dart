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
      width: 320,
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
            onTap: (value) {
              urlLaunch.launchInBrowser(AppLinks.email);
            },
          ),
          ButtonInfo(
            title: AppTexts.phone,
            onTap: (value) {
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
            onTap: (value) {
              urlLaunch.launchInBrowser(AppLinks.youtube);
            },
          ),
          ButtonInfo(
            title: 'LikedIn',
            onTap: (value) {
              urlLaunch.launchInBrowser(AppLinks.linkdin);
            },
          ),
          ButtonInfo(
            title: 'GitHub',
            onTap: (value) {
              urlLaunch.launchInBrowser(AppLinks.gitHub);
            },
          ),
          ButtonInfo(
            title: 'Instagram',
            onTap: (value) {
              urlLaunch.launchInBrowser(AppLinks.instagram);
            },
          ),
        ],
      ),
    );
  }
}
