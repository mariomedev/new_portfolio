import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/widgets.dart';
import '/presentation/screens/shared/shared.dart';

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Brackground(
        child: Column(
          children: [
            HeaderNavigator(
              index: 1,
            ),
            Expanded(
              child: Row(
                children: [
                  _LateralView(),
                  _MenuView(),
                  Expanded(
                    child: Column(
                      children: [
                        BoxBorderHorizontal(
                          child: Row(
                            children: [
                              BoxBorderVertical(
                                width: 250,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Spacer(),
                              BoxBorderVertical(
                                width: 50,
                              ),
                              Spacer()
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}

class _MenuView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BoxBorderVertical(
      width: 311,
      child: Column(
        children: [
          BoxBorderHorizontal(),
          BoxBorderHorizontal(
            height: 176,
          ),
          BoxBorderHorizontal(),
        ],
      ),
    );
  }
}

class _LateralView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BoxBorderVertical(
      width: 50,
      child: Column(
        spacing: 32,
        children: [
          SizedBox(height: 10),
          SvgPicture.asset(
            'assets/svg/terminal.svg',
            width: 24,
            height: 24,
          ),
          SvgPicture.asset(
            'assets/svg/light.svg',
            width: 24,
            height: 24,
          ),
          SvgPicture.asset(
            'assets/svg/console-game.svg',
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
