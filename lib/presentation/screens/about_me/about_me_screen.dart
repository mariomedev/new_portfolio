import 'package:flutter/material.dart';

import '/presentation/screens/shared/shared.dart';

import 'widgets/widgets.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Brackground(
        child: Column(
          children: [
            HeaderNavigator(
              index: 1,
            ),
            Expanded(
              child: Row(
                children: [
                  AboutMeLateralMenu(),
                  AboutMeFolderMenu(),
                  AboutMeCodeSection(),
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
