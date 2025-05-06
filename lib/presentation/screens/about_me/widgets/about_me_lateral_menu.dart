import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

import '../../widgets/widgets.dart';

class AboutMeLateralMenu extends StatelessWidget {
  const AboutMeLateralMenu({super.key});

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
