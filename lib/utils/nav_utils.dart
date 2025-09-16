import 'package:flutter/material.dart';
import 'package:symbiosis_school_jabalpur/pages/home/home_ui.dart';

import '../pages/about/about.dart';
import '../pages/contact/contact.dart';
import '../pages/social_media/social_media.dart';

int selectedIndex = 0;
final List<Widget> pages = [
  const HomePageContent(),
  const AboutPage(),
  const SocialMediaPage(),
  const ContactPage(),
];

class NavUtils {
  static void onTabChanged(int index, Function(int) callback) {
    selectedIndex = index;
    callback(selectedIndex);
  }
}
