import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/presentation/providers/url/url_provider.dart';

import '../../../../core/core.dart';

class HomeInfo extends ConsumerWidget {
  const HomeInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyle = GoogleFonts.firaCode();
    final urlLaunch = ref.watch(urlProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Hi all. I am',
          style: textStyle.copyWith(
            fontSize: 20,
            color: const Color(0xFF90A1B9),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          AppTexts.nameDeveloper,
          style: textStyle.copyWith(
            fontSize: 80,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          '> ${AppTexts.profession}',
          style: textStyle.copyWith(
            fontSize: 40,
            color: const Color(0xFF615FFF),
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 40),
        Text(
          '// complete the game to continue',
          style: textStyle.copyWith(
            fontSize: 20,
            color: const Color(0xFF90A1B9),
          ),
        ),
        Text(
          '// find my profile on Github:',
          style: textStyle.copyWith(
            fontSize: 20,
            color: const Color(0xFF90A1B9),
          ),
        ),
        Row(
          spacing: 5,
          children: [
            Text(
              'Const',
              style: textStyle.copyWith(
                fontSize: 20,
                color: const Color(0xFF615FFF),
              ),
            ),
            Text(
              'githubLink',
              style: textStyle.copyWith(
                fontSize: 20,
                color: const Color(0xFF00D5BE),
              ),
            ),
            Text(
              '=',
              style: textStyle.copyWith(fontSize: 20, color: Colors.white),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  urlLaunch.launchInBrowser(AppLinks.gitHub);
                },
                child: Text(
                  AppTexts.gitHub,
                  style: textStyle.copyWith(
                      fontSize: 20, color: const Color(0xFFFFA1AD)),
                ),
              ),
            ),
            Text(
              ';',
              style: textStyle.copyWith(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
