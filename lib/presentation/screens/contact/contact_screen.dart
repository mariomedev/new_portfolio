import 'package:flutter/material.dart';
import 'package:myapp/core/helpers/screen_manage.dart';

import '../shared/shared.dart';
import 'widgets/widgets.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ScreenManage.isDesktop(context);
    final isTablet = ScreenManage.isTablet(context);
    return Scaffold(
      body: Brackground(
        child: Column(
          children: [
            const HeaderNavigator(index: 3),
            if (isDesktop || isTablet)
              const Expanded(
                child: Row(
                  children: [
                    ContactMeFolderMenu(),
                    ContactMeCodeSection(),
                  ],
                ),
              ),
            if (!isDesktop && !isTablet) const ContactMeCodeSection(),
            //if (!isDesktop && !isTablet) const ContactMeFolderMenu(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
