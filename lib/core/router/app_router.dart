import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/about-me',
      builder: (context, state) => const AboutMeScreen(),
    ),
    GoRoute(
      path: '/projects',
      builder: (context, state) => const ProjectsScreen(),
    ),
    GoRoute(
      path: '/contact-me',
      builder: (context, state) => const ContactScreen(),
    )
  ],
);
