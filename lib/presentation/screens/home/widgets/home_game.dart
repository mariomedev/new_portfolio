import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/core/helpers/screen_manage.dart';

import 'widgets.dart';

class HomeGame extends StatelessWidget {
  const HomeGame({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = ScreenManage.isDesktop(context);
    return Container(
      width: 500,
      height: ScreenManage.responsiveValue(
        context,
        mobile: 600,
        desktop: 475,
        tablet: 500,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            const Color(0xFF175553),
            const Color(0xFF43D9AD).withValues(alpha: 0.013),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(top: 5, left: 5, child: _Dot()),
          Positioned(top: 5, right: 5, child: _Dot()),
          Positioned(bottom: 5, right: 5, child: _Dot()),
          Positioned(bottom: 5, left: 5, child: _Dot()),
          if (!isDesktop) const Positioned.fill(child: HomeGameContainer()),
          if (isDesktop)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const HomeGameContainer(),
                _GameControlsContainer(),
              ],
            ),
        ],
      ),
    );
  }
}

class _GameControlsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            height: 140,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: const Color(0xFF1D293D),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '//use keyboard',
                  style: GoogleFonts.firaCode(color: Colors.white),
                ),
                Text(
                  '//arrows to play',
                  style: GoogleFonts.firaCode(color: Colors.white),
                ),
                const Spacer(),
                const Align(
                  alignment: Alignment.center,
                  child: _ButtonKeyboard(icon: Icons.arrow_drop_up_outlined),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _ButtonKeyboard(icon: Icons.arrow_left_outlined),
                    _ButtonKeyboard(icon: Icons.arrow_drop_down),
                    _ButtonKeyboard(icon: Icons.arrow_right),
                  ],
                ),
                const SizedBox(height: 5)
              ],
            ),
          ),
          const Spacer(),
          _SkipButton()
        ],
      ),
    );
  }
}

class _SkipButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          context.push('/about-me');
        },
        child: Container(
          margin: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          height: 40,
          width: 58,
          child: Center(
            child: Text(
              'Skip',
              style: GoogleFonts.firaCode(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class _ButtonKeyboard extends StatelessWidget {
  final IconData icon;

  const _ButtonKeyboard({
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 30,
      decoration: BoxDecoration(
        color: const Color(0xFF0A0A0A),
        border: Border.all(
          color: const Color(0xFF314158),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          stops: [0.15, 100],
          colors: [
            Color(0xFF196C6A),
            Color(0xFF114B4A),
          ],
        ),
      ),
      width: 18,
      height: 18,
      child: Center(
        child: SvgPicture.asset(
          'assets/svg/bolt-down-left.svg',
          width: 12,
          height: 12,
        ),
      ),
    );
  }
}
