import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/social_media_card.dart';
import 'package:symbiosis_school_jabalpur/widgets/button1_widget.dart';

class MobileSocialMediaHome extends StatefulWidget {
  const MobileSocialMediaHome({super.key});

  @override
  State<MobileSocialMediaHome> createState() => _MobileSocialMediaHomeState();
}

class _MobileSocialMediaHomeState extends State<MobileSocialMediaHome> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 70,
          ),
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
              fontSize: size.width / 8,
              fontFamily: "Magic Brush",
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: size.width / 1.2,
            child: const Text(
              "We do good with others, for others",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: [
              SocialMediaCard(
                image: "assets/image/dads.png",
                description:
                    "Facebook is a photo and video-sharing social networking service owned by Facebook, Inc. It was created by Kevin Systrom and Mike Krieger",
              ),
              SocialMediaCard(
                image: "assets/image/dads.png",
                description:
                    "YouTube is a photo and video-sharing social networking service owned by Facebook, Inc. It was created by Kevin Systrom and Mike Krieger",
              ),
              SocialMediaCard(
                image: "assets/image/dads.png",
                description:
                    "Instagram is a photo and video-sharing social networking service owned by Facebook, Inc. It was created by Kevin Systrom and Mike Krieger",
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: size.width / 1.2,
            child: const Text(
              "See our feed for more School of X magic!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ButtonWidget1(text: "View More", onpressed: () {}),
          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
