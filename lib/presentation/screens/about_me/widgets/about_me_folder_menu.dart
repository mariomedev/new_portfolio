import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/presentation/providers/about_me/about_me_provider.dart';
import 'package:myapp/presentation/providers/url/url_provider.dart';

import '../../../../core/core.dart';
import '../../widgets/widgets.dart';

class AboutMeFolderMenu extends ConsumerStatefulWidget {
  const AboutMeFolderMenu({super.key});

  @override
  ConsumerState<AboutMeFolderMenu> createState() => _AboutMeFolderMenuState();
}

class _AboutMeFolderMenuState extends ConsumerState<AboutMeFolderMenu> {
  int _itemSeleted = 0;
  void _changeItem(int value) {
    setState(() {
      _itemSeleted = value;
    });
  }

  void _chageCode(String code) {
    ref.read(aboutMeProvider.notifier).update((state) => code);
  }

  void _chageName(String name) {
    ref.read(aboutMeNameProvider.notifier).update((state) => name);
  }

  @override
  Widget build(BuildContext context) {
    final urlLaunch = ref.watch(urlProvider);
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
                  title: 'bio',
                  arrowIsActive: true,
                  isSelected: _itemSeleted == 0,
                  isDawer: _itemSeleted == 0,
                  pathImage: AppAssets.folderRed,
                  onTap: () {
                    _changeItem(0);
                    _chageCode(AppTexts.bio);
                    _chageName('bio');
                  },
                ),
                ButtonInfo(
                  title: 'interests',
                  arrowIsActive: true,
                  isSelected: _itemSeleted == 1,
                  isDawer: _itemSeleted == 1,
                  pathImage: AppAssets.folderGreen,
                  onTap: () {
                    _changeItem(1);
                    _chageCode(AppTexts.interest);
                    _chageName('interests');
                  },
                ),
                ButtonInfo(
                  title: 'education',
                  arrowIsActive: true,
                  isSelected: _itemSeleted == 2,
                  isDawer: _itemSeleted == 2,
                  pathImage: AppAssets.folderBlue,
                  onTap: () {
                    _changeItem(2);
                    _chageCode(AppTexts.education);
                    _chageName('education');
                  },
                ),
                ButtonInfo(
                  title: 'experience',
                  arrowIsActive: true,
                  isSelected: _itemSeleted == 3,
                  isDawer: _itemSeleted == 3,
                  pathImage: AppAssets.folderBlue,
                  onTap: () {
                    _changeItem(3);
                    _chageCode(AppTexts.experience);
                    _chageName('experience');
                  },
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
                onTap: () {
                  urlLaunch.launchInBrowser(AppLinks.email);
                },
              ),
              ButtonInfo(
                title: AppTexts.phone,
                pathImage: AppAssets.phoneLogo,
                isDawer: false,
                onTap: () {
                  urlLaunch.launchInBrowser(AppLinks.phone);
                },
              ),
              ButtonInfo(
                title: AppTexts.linkdinName,
                pathImage: AppAssets.linkedinLogo,
                onTap: () {
                  urlLaunch.launchInBrowser(AppLinks.linkdin);
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
