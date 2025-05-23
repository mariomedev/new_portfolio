import 'package:flutter/material.dart';

import '../shared/shared.dart';
import 'widgets/widgets.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Brackground(
        child: Column(
          children: [
            HeaderNavigator(index: 2),
            Expanded(
              child: Row(
                children: [
                  //ProjectsFolderMenu(),
                  ProjectsListView(),
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
