import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/core/core.dart';
import 'package:myapp/presentation/providers/providers.dart';

class ProjectsCard extends StatelessWidget {
  final int index;
  final String title;
  final String imagePath;
  final String description;
  final String linkGitRepo;
  final String? linkDemo;
  const ProjectsCard({
    super.key,
    required this.index,
    required this.title,
    required this.imagePath,
    required this.description,
    required this.linkGitRepo,
    this.linkDemo,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDecktop = ScreenManage.isDesktop(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isDecktop ? 50 : 15,
        vertical: 30,
      ),
      child: SizedBox(
        height: ScreenManage.responsiveValue(
          context,
          mobile: 650,
          desktop: 500,
        ),
        width: double.infinity,
        child: Column(
          children: [
            FittedBox(
              child: _Title(
                index: index,
                title: title,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: isDecktop
                    ? Row(
                        children: [
                          _ImageCard(
                            imagePath: imagePath,
                          ),
                          _BodyCard(
                            description: description,
                            linkGitRepo: linkGitRepo,
                            linkDemo: linkDemo,
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          _ImageCard(
                            imagePath: imagePath,
                          ),
                          _BodyCard(
                            description: description,
                            linkGitRepo: linkGitRepo,
                            linkDemo: linkDemo,
                          ),
                        ],
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BodyCard extends ConsumerWidget {
  final String description;
  final String linkGitRepo;
  final String? linkDemo;

  const _BodyCard({
    required this.description,
    required this.linkGitRepo,
    this.linkDemo,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          border: Border.all(
            color: const Color(0xff1D293D),
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              Text(
                description,
                style: GoogleFonts.firaCode(
                  color: const Color(0xFF90A1B9),
                  fontSize: 16,
                ),
                maxLines: ScreenManage.isMobile(context) ? 7 : null,
              ),
              const Spacer(),
              FittedBox(
                child: Row(
                  spacing: 10,
                  children: [
                    _CustomButton(
                      title: 'View_Repo',
                      url: linkGitRepo,
                    ),
                    if (linkDemo != null)
                      _CustomButton(
                        title: 'View_Demo',
                        url: linkDemo!,
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomButton extends ConsumerWidget {
  final String title;
  final String url;
  const _CustomButton({
    required this.title,
    required this.url,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final urlLaunch = ref.watch(urlProvider);

    return SizedBox(
      width: 150,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff45556C),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          urlLaunch.launchInBrowser(url);
        },
        child: Text(
          title,
          style: GoogleFonts.firaCode(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  final String imagePath;

  const _ImageCard({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    bool isDesktop = ScreenManage.isDesktop(context);
    return Expanded(
      flex: isDesktop ? 2 : 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16),
          ),
          border: Border.all(
            color: const Color(0xff1D293D),
            width: 1,
          ),
        ),
        child: FadeInImage(
          height: double.infinity,
          width: double.infinity,
          placeholder: const AssetImage(AppAssets.loading),
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  final int index;
  final String title;

  const _Title({required this.index, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 30,
      children: [
        Text(
          'Project $index',
          style: GoogleFonts.firaCode(
            color: const Color(0xFF615FFF),
            fontSize: 16,
          ),
        ),
        Text(
          '// _$title',
          style: GoogleFonts.firaCode(
            color: const Color(0xFF90A1B9),
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
