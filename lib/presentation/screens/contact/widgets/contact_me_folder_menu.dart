import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class ContactMeFolderMenu extends StatelessWidget {
  const ContactMeFolderMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const BoxBorderVertical(
      width: 320,
      child: Column(
        spacing: 10,
        children: [
          BoxBorderHorizontal(
            height: 50,
            child: ButtonInfo(
              title: 'Contacts',
              arrowIsActive: true,
              isOpen: true,
            ),
          ),
          ButtonInfo(
            title: 'mario.melo.dev@gmail.com',
          ),
          ButtonInfo(
            title: '+57 300-508-8310',
          ),
          BoxBorderHorizontal(
            height: 50,
            child: ButtonInfo(
              title: 'Find-me-also-in',
              arrowIsActive: true,
              isOpen: true,
            ),
          ),
          ButtonInfo(
            title: 'YouTube',
          ),
          ButtonInfo(
            title: 'LikedIn',
          ),
          ButtonInfo(
            title: 'GitHub',
          ),
          ButtonInfo(
            title: 'Instagram',
          ),
        ],
      ),
    );
  }
}
