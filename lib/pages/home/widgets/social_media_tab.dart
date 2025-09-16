import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:symbiosis_school_jabalpur/utils/API/fetch.dart';
import 'package:symbiosis_school_jabalpur/widgets/button1_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaTab extends StatefulWidget {
  const SocialMediaTab({super.key});

  @override
  State<SocialMediaTab> createState() => _SocialMediaTabState();
}

class _SocialMediaTabState extends State<SocialMediaTab> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 1.7,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/image/plane.svg",
            height: 100,
            width: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "#Symbiosians",
            style: TextStyle(
              fontSize: size.width / 30,
              fontFamily: "Magic Brush",
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "We do good with others, for others",
            style: TextStyle(
              fontSize: size.width / 80,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: size.width * 0.9,
            child: const InstagramPosts(
              showOnlyImages: true,
              limit: 6,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            "See our feed for more Symbiosis Group of schools magic!",
            style: TextStyle(
              color: Colors.black,
              fontSize: size.width / 80,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ButtonWidget1(
            text: "View More",
            onpressed: () {
              launchUrl(Uri.parse(
                  'https://www.instagram.com/symbiosis_school_jabalpur/'));
            },
          )
        ],
      ),
    );
  }
}
