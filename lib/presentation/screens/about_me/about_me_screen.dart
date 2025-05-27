import 'package:flutter/material.dart';
import 'package:myapp/core/core.dart';

import '/presentation/screens/shared/shared.dart';

import 'widgets/widgets.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = ScreenManage.isDesktop(context);
    return SafeArea(
      child: Scaffold(
        body: Brackground(
          child: Column(
            children: [
              const HeaderNavigator(
                index: 1,
              ),
              if (isDesktop)
                const Expanded(
                  child: Row(
                    children: [
                      AboutMeLateralMenu(),
                      AboutMeFolderMenu(),
                      AboutMeCodeSection(),
                    ],
                  ),
                ),
              if (!isDesktop)
                const Expanded(
                  child: Column(
                    children: [
                      AboutMeFolderMenu(),
                      AboutMeCodeSection(),
                    ],
                  ),
                ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
