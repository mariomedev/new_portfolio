import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

import '../../../../core/core.dart';
import '../../../providers/providers.dart';
import '../../widgets/widgets.dart';

class ContactMeInfoCode extends ConsumerWidget {
  const ContactMeInfoCode({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: BoxBorderVertical(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SyntaxView(
            code: ref.watch(codeContactProvider).code,
            syntax: Syntax.DART,
            syntaxTheme: myCustomTheme,
            fontSize: 18.0,
            withLinesCount: true,
            expanded: true,
            selectable: false,
          ),
        ),
      ),
    );
  }
}
