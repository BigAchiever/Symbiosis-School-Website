import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:symbiosis_school_jabalpur/pages/about/about.dart';
import 'package:symbiosis_school_jabalpur/pages/contact/contact.dart';
import 'package:symbiosis_school_jabalpur/pages/error_page/error_404.dart';
import 'package:symbiosis_school_jabalpur/pages/home/home_ui.dart';
import 'package:symbiosis_school_jabalpur/pages/learn_more/learn_more1.dart';
import 'package:symbiosis_school_jabalpur/pages/learn_more/learn_more2.dart';
import 'package:symbiosis_school_jabalpur/pages/social_media/social_media.dart';

import '../layout/appbar_and_layout.dart';

// Scaffold with persistent AppBar
class ScaffoldWithNavBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const ScaffoldWithNavBar({required this.navigationShell, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppbarWidget(
        selectedIndex: navigationShell.currentIndex,
        body: navigationShell,
        mobileBody: navigationShell,
      ),
    );
  }
}

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/home',
  errorBuilder: (context, state) => const NotFoundPage(),
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return ScaffoldWithNavBar(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'home',
              path: '/home',
              builder: (context, state) => const HomePageContent(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'about',
              path: '/about-us',
              builder: (context, state) => const AboutPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'social',
              path: '/social-media',
              builder: (context, state) => const SocialMediaPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'contact',
              path: '/contact-us',
              builder: (context, state) => const ContactPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'learnmore1',
              path: '/learn-more-symbiosis-higher-secondary-school',
              builder: (context, state) => const LearnMorePage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'learnmore2',
              path: '/learn-more-symbiosis-senior-secondary-school',
              builder: (context, state) => const LearnMorePage2(),
            ),
          ],
        ),
      ],
    ),
  ],
);
