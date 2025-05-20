import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        context.push('/home');
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
    return Brackground(
      child: ScaleTransition(
        scale: _animationScale,
        child: Center(
          child: Image.asset(
            'assets/images/flutter-mario.png',
            height: 400,
            width: 400,
          ),
        ),
      ),
    );
  }
}
