import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:symbiosis_school_jabalpur/pages/about/about.dart';
import 'package:symbiosis_school_jabalpur/pages/contact/contact.dart';
import 'package:symbiosis_school_jabalpur/pages/error_page/error_404.dart';
import 'package:symbiosis_school_jabalpur/pages/home/home_ui.dart';
import 'package:symbiosis_school_jabalpur/pages/learn_more/learn_more1.dart';
import 'package:symbiosis_school_jabalpur/pages/learn_more/learn_more2.dart';
import 'package:symbiosis_school_jabalpur/pages/social_media/social_media.dart';
import 'package:symbiosis_school_jabalpur/routes/getpagebuilder.dart';

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
  redirect: (context, state) {
    if (state.uri.toString().startsWith('/')) {
      return null; // Let go_router handle valid paths
    }
    return '/home'; // Redirect invalid paths to home
  },
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
              pageBuilder: (context, state) =>
                  getPageBuilder(const HomePageContent()),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'about',
              path: '/about-us',
              pageBuilder: (context, state) =>
                  getPageBuilder(const AboutPage()),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'social',
              path: '/social-media',
              pageBuilder: (context, state) =>
                  getPageBuilder(const SocialMediaPage()),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'contact',
              path: '/contact-us',
              pageBuilder: (context, state) =>
                  getPageBuilder(const ContactPage()),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'learnmore1',
              path: '/learn-more-symbiosis-higher-secondary-school',
              pageBuilder: (context, state) =>
                  getPageBuilder(const LearnMorePage()),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              name: 'learnmore2',
              path: '/learn-more-symbiosis-senior-secondary-school',
              pageBuilder: (context, state) =>
                  getPageBuilder(const LearnMorePage2()),
            ),
          ],
        ),
      ],
    ),
  ],
);
