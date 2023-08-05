import 'package:flutter/material.dart';
import 'package:schooll_website/pages/home/home_ui.dart';

import '../pages/about/about.dart';
import '../pages/contact/contact.dart';
import '../pages/social_media/social_media.dart';
import '../pages/gallery/gallery_ui.dart';
import '../widgets/button_widget2.dart';

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
        title: InkWell(
            hoverColor: Colors.transparent,
            onTap: () => _onTabTapped(4),
            child: const SizedBox(
              width: 330,
              child: Row(
                children: [
                  Text(
                    'Symbiosis School\nJabalpur',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontFamily: "Magic Brush",
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 23, 23, 23),
                    radius: 35,
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Image(
                        image: AssetImage('assets/image/logo.png'),
                      ),
                    ),
                  ),
                ],
              ),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  hoverColor: Colors.transparent,
                  onTap: () => _onTabTapped(0),
                  child: Text(
                    'About',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: _selectedIndex == 0
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ),
                ),
                // const SizedBox(
                //   width: 30,
                // ),
                // InkWell(
                //   hoverColor: Colors.transparent,
                //   onTap: () => _onTabTapped(1),
                //   child: Text(
                //     'Gallery',
                //     style: TextStyle(
                //         color: Colors.black,
                //         fontSize: 20,
                //         fontWeight: _selectedIndex == 1
                //             ? FontWeight.w600
                //             : FontWeight.normal),
                //   ),
                // ),
                const SizedBox(
                  width: 40,
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  onTap: () => _onTabTapped(2),
                  child: Text(
                    'Social Media',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: _selectedIndex == 2
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  onTap: () => _onTabTapped(3),
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: _selectedIndex == 3
                          ? FontWeight.w600
                          : FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                ButtonWidget2(
                  text: "Admin Login",
                  onpressed: () {},
                )
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
