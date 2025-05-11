import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import 'widgets.dart';

class ContactMeCodeSection extends StatelessWidget {
  const ContactMeCodeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          FileOpen(title: 'Contact'),
          Expanded(
            child: Row(
              children: [
                ContactMeForm(),
                ContactMeInfoCode(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
