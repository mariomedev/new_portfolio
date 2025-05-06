import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class AboutMeFolderMenu extends StatelessWidget {
  const AboutMeFolderMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BoxBorderVertical(
      width: 330,
      child: Column(
        children: [
          BoxBorderHorizontal(
            height: 50,
            child: ButtonInfo(
              title: 'Personal-Info',
              arrowIsActive: true,
              isOpen: true,
            ),
          ),
          BoxBorderHorizontal(
            child: Column(
              spacing: 10,
              children: [
                SizedBox(height: 10),
                ButtonInfo(
                  title: 'Bio',
                  arrowIsActive: true,
                  isOpen: true,
                  pathImage: 'assets/svg/icon-folder-red.svg',
                  onTap: (value) {
                  },
                ),
                ButtonInfo(
                  title: 'interests',
                  arrowIsActive: true,
                  pathImage: 'assets/svg/icon-folder-green.svg',
                  onTap: (value) {
                  },
                ),
                ButtonInfo(
                  title: 'education',
                  arrowIsActive: true,
                  pathImage: 'assets/svg/icon-folder-blue.svg',
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          BoxBorderHorizontal(
            height: 50,
            child: ButtonInfo(
              title: 'Contacts',
              arrowIsActive: true,
              isOpen: true,
            ),
          ),
          Column(
            spacing: 10,
            children: [
              SizedBox(height: 10),
              ButtonInfo(
                title: 'mario.melo.dev@gmail.com',
                pathImage: 'assets/svg/email.svg',
              ),
              ButtonInfo(
                title: '+57 300-508-8310',
                pathImage: 'assets/svg/phone.svg',
              ),
              ButtonInfo(
                title: 'mario.melo.dev',
                pathImage: 'assets/svg/linkedin.svg',
              ),
            ],
          )
        ],
      ),
    );
  }
}
