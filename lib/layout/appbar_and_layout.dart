import 'package:flutter/material.dart';
import 'package:schooll_website/layout/footer.dart';
import 'package:schooll_website/pages/home/home_ui.dart';

import '../pages/about/about.dart';
import '../pages/contact/contact.dart';
import '../pages/social_media/social_media.dart';
import '../pages/stories/stories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 4;

  final List<Widget> _pages = [
    const AboutPage(),
    const StoriesPage(),
    const SocialMediaPage(),
    const ContactPage(),
    const HomePageContent()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: const Color(0xffFFCD02),
        title: GestureDetector(
            onTap: () => _onTabTapped(4),
            child: const Text(
              'Symbiosis School\nJabalpur',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontFamily: "Magic Brush",
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => _onTabTapped(0),
                  child: Text(
                    'About',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: _selectedIndex == 0
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () => _onTabTapped(1),
                  child: Text(
                    'Stories',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: _selectedIndex == 1
                            ? FontWeight.bold
                            : FontWeight.normal),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () => _onTabTapped(2),
                  child: Text(
                    'Social Media',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: _selectedIndex == 2
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () => _onTabTapped(3),
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: _selectedIndex == 3
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _selectedIndex,
              children: _pages,
            ),
          ),
        ],
      ),
    );
  }
}
