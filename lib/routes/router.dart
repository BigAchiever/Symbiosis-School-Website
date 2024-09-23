import 'package:go_router/go_router.dart';
import 'package:symbiosis_school_jabalpur/pages/about/about.dart';
import 'package:symbiosis_school_jabalpur/pages/contact/contact.dart';
import 'package:symbiosis_school_jabalpur/pages/error_page/error_404.dart';
import 'package:symbiosis_school_jabalpur/pages/home/home_ui.dart';

import '../pages/learn_more/learn_more1.dart';
import '../pages/learn_more/learn_more2.dart';
import '../pages/social_media/social_media.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/home',
  errorBuilder: (context, state) => const NotFoundPage(),
  routes: [
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => const HomePageContent(),
    ),
    GoRoute(
      name: 'about',
      path: '/about-us',
      builder: (context, state) => const AboutPage(),
    ),
    GoRoute(
      name: 'social',
      path: '/social-media',
      builder: (context, state) => const SocialMediaPage(),
    ),
    GoRoute(
      name: 'contact',
      path: '/contact-us',
      builder: (context, state) => const ContactPage(),
    ),
    GoRoute(
      name: 'learnmore1',
      path: '/learn-more-symbiosis-higher-secondary-school',
      builder: (context, state) => const LearnMorePage(),
    ),
    GoRoute(
      name: 'learnmore2',
      path: '/learn-more-symbiosis-senior-secondary-school',
      builder: (context, state) => const LearnMorePage2(),
    ),
  ],
);
