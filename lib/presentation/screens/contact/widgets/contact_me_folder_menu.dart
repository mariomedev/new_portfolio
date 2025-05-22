import 'package:flutter/material.dart';

import 'package:myapp/core/core.dart';
import '../../widgets/widgets.dart';

class ContactMeFolderMenu extends StatelessWidget {
  const ContactMeFolderMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              //UrlLaunch.launchInBrowser();
            },
          ),
          ButtonInfo(
            title: AppTexts.phone,
            onTap: (value) {
              UrlLaunch.launchInBrowser(AppLinks.phone);
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
              UrlLaunch.launchInBrowser(AppLinks.youtube);
            },
          ),
          ButtonInfo(
            title: 'LikedIn',
            onTap: (value) {
              UrlLaunch.launchInBrowser(AppLinks.linkdin);
            },
          ),
          ButtonInfo(
            title: 'GitHub',
            onTap: (value) {
              UrlLaunch.launchInBrowser(AppLinks.gitHub);
            },
          ),
          ButtonInfo(
            title: 'Instagram',
            onTap: (value) {
              UrlLaunch.launchInBrowser(AppLinks.instagram);
            },
          ),
        ],
      ),
    );
  }
}
