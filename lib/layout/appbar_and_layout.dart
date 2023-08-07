import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/button_widget2.dart';

class AppbarWidget extends StatefulWidget {
  final Widget body;
  final int selectedIndex;
  const AppbarWidget(
      {super.key, required this.body, required this.selectedIndex});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFCD02),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: null,
        toolbarHeight: 100,
        elevation: 0,
        backgroundColor: const Color(0xffFFCD02),
        title: InkWell(
            hoverColor: Colors.transparent,
            onTap: () =>
                GoRouter.of(context).go('/symbiosis-school-jabalpur/home'),
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
                  onTap: () => GoRouter.of(context)
                      .go('/symbiosis-school-jabalpur/about'),
                  child: Text(
                    'About',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: widget.selectedIndex == 1
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
                  onTap: () => GoRouter.of(context)
                      .go('/symbiosis-school-jabalpur/social'),
                  child: Text(
                    'Social Media',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: widget.selectedIndex == 2
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
                  onTap: () => GoRouter.of(context)
                      .go('/symbiosis-school-jabalpur/contact'),
                  child: Text(
                    'Contact',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: widget.selectedIndex == 3
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
      body: widget.body,
      // body: Column(
      //   children: [
      //     Expanded(
      //       child: IndexedStack(
      //         index: widget.selectedIndex,
      //         children: const [
      //           AboutPage(),
      //           SocialMediaPage(),
      //           ContactPage(),
      //           HomePageContent(),
      //         ],
      //       ),
      //     ),
      //   ],
      // ),
    );
  }
}
