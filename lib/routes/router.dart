import 'package:go_router/go_router.dart';
import 'package:schooll_website/pages/about/about.dart';
import 'package:schooll_website/pages/contact/contact.dart';
import 'package:schooll_website/pages/error_page/error_404.dart';
import 'package:schooll_website/pages/home/home_ui.dart';

import '../pages/learn_more/learn_more1.dart';
import '../pages/learn_more/learn_more2.dart';
import '../pages/social_media/social_media.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/symbiosis-school-jabalpur/home',
  errorBuilder: (context, state) => const NotFoundPage(),
  routes: [
    GoRoute(
      name: 'home',
      path: '/symbiosis-school-jabalpur/home',
      builder: (context, state) => const HomePageContent(),
    ),
    GoRoute(
      name: 'about',
      path: '/symbiosis-school-jabalpur/about-us',
      builder: (context, state) => const AboutPage(),
    ),
    GoRoute(
      name: 'social',
      path: '/symbiosis-school-jabalpur/social-media',
      builder: (context, state) => const SocialMediaPage(),
    ),
    GoRoute(
      name: 'contact',
      path: '/symbiosis-school-jabalpur/contact-us',
      builder: (context, state) => const ContactPage(),
    ),
    GoRoute(
      path: '/symbiosis-higher-secondary-school/learn-more',
      builder: (context, state) => const LearnMorePage(),
    ),
    GoRoute(
      path: '/symbiosis-senior-secondary-school/learn-more',
      builder: (context, state) => const LearnMorePage2(),
    ),
  ],
);
