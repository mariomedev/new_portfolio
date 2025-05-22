import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../widgets/widgets.dart';

class AboutMeFolderMenu extends StatelessWidget {
  const AboutMeFolderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BoxBorderVertical(
      width: 330,
      child: Column(
        children: [
          const BoxBorderHorizontal(
            height: 50,
            child: ButtonInfo(
              title: 'Personal-Info',
              isSelected: true,
              arrowIsActive: true,
              isDawer: true,
            ),
          ),
          BoxBorderHorizontal(
            child: Column(
              spacing: 10,
              children: [
                const SizedBox(height: 10),
                ButtonInfo(
                  title: 'Bio',
                  arrowIsActive: true,
                  isDawer: true,
                  pathImage: AppAssets.folderRed,
                  onTap: (value) {},
                ),
                ButtonInfo(
                  title: 'interests',
                  arrowIsActive: true,
                  pathImage: AppAssets.folderGreen,
                  onTap: (value) {},
                ),
                ButtonInfo(
                  title: 'education',
                  arrowIsActive: true,
                  pathImage: AppAssets.folderBlue,
                  onTap: (value) {},
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          const BoxBorderHorizontal(
            height: 50,
            child: ButtonInfo(
              title: 'Contacts',
              isDawer: true,
              arrowIsActive: true,
              isSelected: true,
            ),
          ),
          Column(
            spacing: 10,
            children: [
              const SizedBox(height: 10),
              ButtonInfo(
                title: AppTexts.email,
                pathImage: AppAssets.emailLogo,
                onTap: (value) {},
              ),
              ButtonInfo(
                title: AppTexts.phone,
                pathImage: AppAssets.phoneLogo,
                isDawer: false,
                onTap: (value) {
                  UrlLaunch.launchInBrowser(AppLinks.phone);
                },
              ),
              ButtonInfo(
                title: AppTexts.linkdinName,
                pathImage: AppAssets.linkedinLogo,
                onTap: (value) {
                  UrlLaunch.launchInBrowser(AppLinks.linkdin);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
