import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../providers/providers.dart';
import 'widgets.dart';

class AboutMeCodeSection extends ConsumerWidget {
  const AboutMeCodeSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(aboutMeNameProvider);
    return Expanded(
      child: Column(
        children: [
          FileOpen(title: name),
          const Expanded(
            child: Row(
              children: [
                AboutMeFileCode(),
                //BoxBorderVertical(width: 50),
                // AboutMeGitGist()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
