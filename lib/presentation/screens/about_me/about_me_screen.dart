import 'package:flutter/material.dart';

import '/presentation/screens/shared/shared.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Brackground(
        child: Column(children: [HeaderNavigator(index: 1,), Spacer(), Footer()]),
      ),
    );
  }
}
