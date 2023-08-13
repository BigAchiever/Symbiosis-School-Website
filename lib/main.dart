import 'package:flutter/material.dart';
import 'package:schooll_website/layout/appbar_and_layout.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'pages/about/about.dart';
import 'pages/contact/contact.dart';
import 'pages/error_page/error_404.dart';
import 'pages/social_media/social_media.dart';

void main() {
  runApp(const MyApp());
  setUrlStrategy(PathUrlStrategy());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        final mediaQueryData = MediaQuery.of(context);
        final scale = mediaQueryData.textScaleFactor.clamp(1.0, 1.3);
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: scale),
          child: child!,
        );
      },
      title: 'School Website',
      debugShowCheckedModeBanner: false,

      initialRoute: '/',
      routes: {
        '/': (context) => const AppbarWidget(),
        '/symbiosis_school_jabalpur/about': (context) => const AboutPage(),
        '/symbiosis_school_jabalpur/social_media': (context) =>
            const SocialMediaPage(),
        '/symbiosis_school_jabalpur/contact_us': (context) =>
            const ContactPage(),
        '/symbiosis_school_jabalpur/error404': (context) =>
            const NotFoundPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => const NotFoundPage());
      },
      // routerConfig: router,
    );
  }
}
