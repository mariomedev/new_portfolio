import 'package:flutter/material.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

import '../../../../core/core.dart';

class AboutMeFileCode extends StatelessWidget {
  const AboutMeFileCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SyntaxView(
          code: AppTexts.bio,
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
