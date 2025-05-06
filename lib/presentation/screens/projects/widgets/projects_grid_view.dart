import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import 'widgets.dart';

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FileOpen(title: 'Flutter'),
          Expanded(
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return ProjectsCard();
              },
            ),
          )
        ],
      ),
    );
  }
}
