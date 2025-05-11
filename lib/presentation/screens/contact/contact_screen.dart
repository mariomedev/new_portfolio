import 'package:flutter/material.dart';

import '../shared/shared.dart';
import 'widgets/widgets.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Brackground(
        child: Column(
          children: [
            HeaderNavigator(index: 3),
            Expanded(
              child: Row(
                children: [
                  ContactMeFolderMenu(),
                  ContactMeCodeSection(),
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
