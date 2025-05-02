import 'package:flutter/material.dart';

import 'core/core.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'portafolio',
      routerConfig: router,
    );
  }
}
