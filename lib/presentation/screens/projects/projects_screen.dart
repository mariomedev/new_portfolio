import 'package:flutter/material.dart';

import '../shared/shared.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Brackground(
        child: Column(
          children: [HeaderNavigator(index: 2), Spacer(), Footer()],
        ),
      ),
    );
  }
}
