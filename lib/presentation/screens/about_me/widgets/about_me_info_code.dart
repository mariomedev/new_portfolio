import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

import '../../../../core/core.dart';
import '../../../providers/providers.dart';

class AboutMeFileCode extends ConsumerWidget {
  const AboutMeFileCode({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SyntaxView(
          code: ref.watch(aboutMeProvider),
          syntax: Syntax.DART,
          syntaxTheme: myCustomTheme,
          fontSize: 18.0,
          withLinesCount: true,
          expanded: true,
          selectable: false,
        ),
      ),
    );
  }
}
