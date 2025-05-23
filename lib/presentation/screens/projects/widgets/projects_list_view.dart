import 'package:flutter/material.dart';

import '../../../domain/domain.dart';
import '../../widgets/widgets.dart';
import 'widgets.dart';

class ProjectsListView extends StatelessWidget {
  const ProjectsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FileOpen(title: 'Flutter'),
          Flexible(
            fit: FlexFit.loose,
            child: ListView.builder(
              itemCount: projectList.length,
              itemBuilder: (context, index) {
                final project = projectList[index];
                return ProjectsCard(
                  index: index,
                  title: project.title,
                  imagePath: project.imagePath,
                  description: project.description,
                  linkGitRepo: project.linkGitRepo,
                  linkDemo: project.linkDemo,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
