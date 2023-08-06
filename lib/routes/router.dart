import 'package:go_router/go_router.dart';
import 'package:schooll_website/pages/about/about.dart';
import 'package:schooll_website/pages/contact/contact.dart';
import 'package:schooll_website/pages/error_page/error_404.dart';
import 'package:schooll_website/pages/home/home_ui.dart';

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
      path: '/about',
      builder: (context, state) => const AboutPage(),
    ),
    GoRoute(
      path: '/social-media',
      builder: (context, state) => const SocialMediaPage(),
    ),
    GoRoute(
      path: '/contact-us',
      builder: (context, state) => const ContactPage(),
    ),
  ],
);
