import 'package:flutter/material.dart';
import 'package:myapp/core/core.dart';

import '../shared/shared.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Brackground(
          child: Column(
            children: [
              const HeaderNavigator(
                index: 0,
              ),
              _HomeView(),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _HomeView extends StatefulWidget {
  @override
  State<_HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<_HomeView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = ScreenManage.isDesktop(context);
    return Expanded(
      child: Stack(
        alignment: Alignment.center,
        children: [
          RotationTransition(
            turns: _controller,
            child: const HomeShadow(
              color: Color(0xFF615FFF),
            ),
          ),
          RotationTransition(
            turns: _controller,
            child: const HomeShadow(
              rotationZ: 0.5,
            ),
          ),
          RotationTransition(
            turns: _controller,
            child: const HomeShadow(
              rotationZ: -0.5,
            ),
          ),
          if (isDesktop)
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomeInfo(),
                SizedBox(width: 50),
                HomeGame(),
              ],
            ),
          if (!isDesktop)
            const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  spacing: 50,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(child: HomeInfo()),
                    HomeGame(),
                    //Footer(),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
