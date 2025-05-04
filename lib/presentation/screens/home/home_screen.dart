import 'package:flutter/material.dart';

import '../shared/shared.dart';
import 'widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Brackground(
        child: Column(
          children: [
            HeaderNavigator(
              index: 0,
            ),
            _HomeView(),
            Footer(),
          ],
        ),
      ),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            right: 300,
            bottom: 50,
            child: HomeShadow(
              rotationZ: 0.7,
              color: Color(0xFF615FFF),
            ),
          ),
          Positioned(
            top: 100,
            child: HomeShadow(
              rotationZ: -0.3,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeInfo(),
              SizedBox(width: 50),
              HomeGame(),
            ],
          ),
        ],
      ),
    );
  }
}
