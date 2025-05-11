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
            title: TextContants.email,
            onTap: (value) {
              //UrlLaunch.launchInBrowser();
            },
          ),
          ButtonInfo(
            title: TextContants.phone,
            onTap: (value) {
              UrlLaunch.launchInBrowser(TextContants.phoneLink);
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
              UrlLaunch.launchInBrowser(TextContants.youtube);
            },
          ),
          ButtonInfo(
            title: 'LikedIn',
            onTap: (value) {
              UrlLaunch.launchInBrowser(TextContants.linkdinLink);
            },
          ),
          ButtonInfo(
            title: 'GitHub',
            onTap: (value) {
              UrlLaunch.launchInBrowser(TextContants.gitHublink);
            },
          ),
          ButtonInfo(
            title: 'Instagram',
            onTap: (value) {
              UrlLaunch.launchInBrowser(TextContants.instagramlink);
            },
          ),
        ],
      ),
    );
  }
}
