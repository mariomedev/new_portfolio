import 'package:flutter/material.dart';
import 'package:myapp/core/helpers/screen_manage.dart';

import '../../widgets/widgets.dart';
import 'widgets.dart';

class ContactMeCodeSection extends StatelessWidget {
  const ContactMeCodeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ScreenManage.isDesktop(context);
    return Expanded(
      child: Column(
        children: [
          const FileOpen(title: 'Contact'),
          Expanded(
            child: Row(
              children: [
                const ContactMeForm(),
                if (isDesktop) const ContactMeInfoCode(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
