import 'package:flutter/material.dart';
import 'package:myapp/core/core.dart';

import 'package:myapp/presentation/screens/widgets/widgets.dart';

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border.symmetric(
          horizontal: BorderSide(
            color: Color(0xFF314158),
          ),
        ),
      ),
      child: const Row(
        children: [
          BoxItem(
            title: 'Find-me-in:',
            width: 150,
          ),
          BoxItemNavigator(
            width: 50,
            imagePath: 'assets/svg/linkedin.svg',
          ),
          Spacer(),
          BoxItem(
            title: 'Made-with-Flutter',
            width: 200,
          ),
          Spacer(),
          BoxItemNavigator(
            title: TextContants.linkGitHubName,
            imagePath: 'assets/svg/git.svg',
            width: 200,
          ),
        ],
      ),
    );
  }
}
