import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/core/core.dart';
import 'package:myapp/presentation/providers/url/url_provider.dart';

import 'package:myapp/presentation/screens/widgets/widgets.dart';

class Footer extends ConsumerWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final urlLaunch = ref.watch(urlProvider);
    final isDesktop = ScreenManage.isDesktop(context);
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
      child: Row(
        children: [
          if (isDesktop)
            const BoxItem(
              title: 'Find-me-in:',
              width: 150,
            ),
          if (isDesktop)
            BoxItemNavigator(
              width: 50,
              imagePath: AppAssets.linkedinLogo,
              onTap: () {
                urlLaunch.launchInBrowser(AppLinks.linkdin);
              },
            ),
          const Spacer(),
          const BoxItem(
            title: 'Made-with-Flutter',
            width: 200,
          ),
          const Spacer(),
          if (isDesktop)
            BoxItemNavigator(
              title: AppTexts.linkGitHubName,
              imagePath: AppAssets.gitLogo,
              width: 200,
              onTap: () {
                urlLaunch.launchInBrowser(AppLinks.gitHub);
              },
            ),
        ],
      ),
    );
  }
}
