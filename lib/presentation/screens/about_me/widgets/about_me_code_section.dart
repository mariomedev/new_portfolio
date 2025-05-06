import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import 'widgets.dart';

class AboutMeCodeSection extends StatelessWidget {
  const AboutMeCodeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          FileOpen(title: 'Bio',),
          Expanded(
            child: Row(
              children: [
                AboutMeFileCode(),
                BoxBorderVertical(width: 50),
                AboutMeGitGist()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
