import 'package:flutter/material.dart';

import '../shared/shared.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Brackground(
        child: Column(children: [HeaderNavigator( index: 0,), Spacer(), Footer()]),
      ),
    );
  }
}
