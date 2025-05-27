import 'package:flutter/material.dart';

import 'package:flame/game.dart';

import '../../../../core/core.dart';
import '../../../flame/flame.dart';

class HomeGameContainer extends StatefulWidget {
  const HomeGameContainer({super.key});

  @override
  State<HomeGameContainer> createState() => _HomeGameContainerState();
}

class _HomeGameContainerState extends State<HomeGameContainer> {
  final CosmicGame game = CosmicGame();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = ScreenManage.isDesktop(context);
    return Container(
      width: 239,
      height: double.infinity,
      margin: EdgeInsets.only(
        left: 30,
        top: 30,
        bottom: 30,
        right: isDesktop ? 0 : 30,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFF1D293D),
        borderRadius: BorderRadius.circular(20),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: GameWidget(game: game),
      ),
    );
  }
}
