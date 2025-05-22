import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:myapp/core/constants/storage/app_assets.dart';

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
          const SizedBox(height: 10),
          SvgPicture.asset(
            AppAssets.terminalLogo,
            width: 24,
            height: 24,
          ),
          SvgPicture.asset(
            AppAssets.lightLogo,
            width: 24,
            height: 24,
          ),
          SvgPicture.asset(
            AppAssets.consoleGameLogo,
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
