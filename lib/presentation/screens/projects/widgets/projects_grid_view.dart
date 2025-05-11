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
          const FileOpen(title: 'Flutter'),
          Expanded(
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return const ProjectsCard();
              },
            ),
          )
        ],
      ),
    );
  }
}
