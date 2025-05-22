import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/core/core.dart';

import '../shared/shared.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animationScale;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 3,
      ),
    );
    _animationScale = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutQuad,
      //easeOutBounce
    );
    _animationScale.addListener(() {
      if (_animationScale.isCompleted) {
        context.go('/home');
      }
    });

    _controller.forward();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = GoogleFonts.firaCode();
    return Brackground(
      child: ScaleTransition(
        scale: _animationScale,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Image.asset(
              AppAssets.logoSplash,
              height: 300,
              width: 300,
            ),
            Text(
              AppTexts.nameDeveloper,
              style: textStyle.copyWith(
                fontSize: 50,
                color: const Color(0xFF615FFF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
