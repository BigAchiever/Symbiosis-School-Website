import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:schooll_website/layout/responsive.dart';
import 'package:schooll_website/utils/constants/dimension.dart';

import '../widgets/button_widget2.dart';

class AppbarWidget extends StatefulWidget {
  final Widget body;
  final Widget mobileBody;
  final int selectedIndex;
  const AppbarWidget(
      {super.key,
      required this.body,
      required this.selectedIndex,
      required this.mobileBody});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  bool menuOpened = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: const Color(0xffFFCD02),
          appBar: constraints.maxWidth > mobileWidth
              ? AppBar(
                  automaticallyImplyLeading: false,
                  leading: null,
                  toolbarHeight: 100,
                  elevation: 0,
                  backgroundColor: const Color(0xffFFCD02),
                  title: InkWell(
                      hoverColor: Colors.transparent,
                      onTap: () => GoRouter.of(context)
                          .go('/symbiosis-school-jabalpur/home'),
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
                )
              : AppBar(
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.black,
                      width: 1,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(20),
                    ),
                  ),
                  backgroundColor: Colors.white,
                  automaticallyImplyLeading: true,
                  toolbarHeight: 70,
                  elevation: 0,
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                        hoverColor: Colors.transparent,
                        onTap: () => GoRouter.of(context)
                            .go('/symbiosis-school-jabalpur/home'),
                        child: Row(
                          children: [
                            Text(
                              'Symbiosis School\nJabalpur',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: constraints.maxWidth > 400 ? 20 : 16,
                                fontFamily: "Magic Brush",
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 23, 23, 23),
                              radius: 22,
                              child: Padding(
                                padding: EdgeInsets.all(4.0),
                                child: Image(
                                  image: AssetImage('assets/image/logo.png'),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),
                  actions: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 12),
                      child: SizedBox(
                        width: constraints.maxWidth > 400 ? 60 : 50,
                        child: Container(
                          decoration: BoxDecoration(
                            color: menuOpened
                                ? const Color.fromARGB(255, 238, 234, 234)
                                : const Color(0xffFFCD02),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: PopupMenuButton<String>(
                            padding: EdgeInsets.zero,
                            onOpened: () {
                              setState(() {
                                menuOpened = true;
                              });
                            },
                            onCanceled: () {
                              setState(() {
                                menuOpened = false;
                              });
                            },
                            offset: const Offset(-3, 55),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                            elevation: 0,
                            icon: Icon(
                              menuOpened ? Icons.close : Icons.menu,
                              weight: 500,
                              color: Colors.black,
                              size: constraints.maxWidth > 400 ? 25 : 20,
                            ),
                            itemBuilder: (BuildContext context) =>
                                <PopupMenuEntry<String>>[
                              PopupMenuItem<String>(
                                mouseCursor: SystemMouseCursors.click,
                                textStyle: const TextStyle(
                                    fontFamily: "Magic Brush",
                                    color: Colors.black),
                                value: 'about',
                                child: Container(
                                    color: const Color(0xfff8f8f8),
                                    alignment: Alignment.centerLeft,
                                    height: 40,
                                    width: size.width,
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.info_outlined,
                                          size: 24,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('About'),
                                      ],
                                    )),
                              ),
                              PopupMenuItem<String>(
                                mouseCursor: SystemMouseCursors.click,
                                textStyle: const TextStyle(
                                    fontFamily: "Magic Brush",
                                    color: Colors.black),
                                value: 'social_media',
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    width: size.width,
                                    height: 40,
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.share_outlined,
                                          size: 24,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Social Media'),
                                      ],
                                    )),
                              ),
                              PopupMenuItem<String>(
                                mouseCursor: SystemMouseCursors.click,
                                textStyle: const TextStyle(
                                    fontFamily: "Magic Brush",
                                    color: Colors.black),
                                value: 'contact',
                                child: Container(
                                    height: 40,
                                    color: const Color(0xfff8f8f8),
                                    alignment: Alignment.centerLeft,
                                    width: size.width,
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.phone_outlined,
                                          size: 24,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Contact'),
                                      ],
                                    )),
                              ),
                              PopupMenuItem<String>(
                                mouseCursor: SystemMouseCursors.click,
                                textStyle: const TextStyle(
                                    fontFamily: "Magic Brush",
                                    color: Colors.black),
                                value: 'Admin Login',
                                child: Container(
                                    alignment: Alignment.centerLeft,
                                    height: 40,
                                    width: size.width,
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.admin_panel_settings,
                                          size: 24,
                                          color: Colors.black,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Admin Login'),
                                      ],
                                    )),
                              ),
                            ],
                            onSelected: (String tab) {
                              if (tab == 'about') {
                                GoRouter.of(context)
                                    .go('/symbiosis-school-jabalpur/about');
                              } else if (tab == 'social_media') {
                                GoRouter.of(context)
                                    .go('/symbiosis-school-jabalpur/social');
                              } else if (tab == 'contact') {
                                GoRouter.of(context)
                                    .go('/symbiosis-school-jabalpur/contact');
                              }
                              // Add more conditions for other tabs
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
          body: ResponsiveLayout(
            mobileBody: widget.mobileBody,
            desktopBody: widget.body,
          ),
        );
      },
    );
  }
}
