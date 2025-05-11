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
                  pathImage: 'assets/svg/icon-folder-red.svg',
                  onTap: (value) {},
                ),
                ButtonInfo(
                  title: 'interests',
                  arrowIsActive: true,
                  pathImage: 'assets/svg/icon-folder-green.svg',
                  onTap: (value) {},
                ),
                ButtonInfo(
                  title: 'education',
                  arrowIsActive: true,
                  pathImage: 'assets/svg/icon-folder-blue.svg',
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
                title: TextContants.email,
                pathImage: 'assets/svg/email.svg',
                onTap: (value) {},
              ),
              ButtonInfo(
                title: TextContants.phone,
                pathImage: 'assets/svg/phone.svg',
                isDawer: false,
                onTap: (value) {
                  UrlLaunch.launchInBrowser(TextContants.phoneLink);
                },
              ),
              ButtonInfo(
                title: TextContants.linkdinName,
                pathImage: 'assets/svg/linkedin.svg',
                onTap: (value) {
                  UrlLaunch.launchInBrowser(TextContants.linkdinLink);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
