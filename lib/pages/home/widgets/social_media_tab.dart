import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/social_media_card.dart';
import 'package:symbiosis_school_jabalpur/widgets/button1_widget.dart';

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
          const Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: [
              SocialMediaCard(
                image: "assets/image/dads.png",
                description:
                    "facebook is a photo and video-sharing social networking service owned by Facebook, Inc. It was created by Kevin Systrom and Mike Krieger",
              ),
              SocialMediaCard(
                image: "assets/image/dads.png",
                description:
                    "youtube is a photo and video-sharing social networking service owned by Facebook, Inc. It was created by Kevin Systrom and Mike Krieger",
              ),
              SocialMediaCard(
                image: "assets/image/dads.png",
                description:
                    "Instagram is a photo and video-sharing social networking service owned by Facebook, Inc. It was created by Kevin Systrom and Mike Krieger",
              ),
              SocialMediaCard(
                image: "assets/image/dads.png",
                description:
                    "Instagram is a photo and video-sharing social networking service owned by Facebook, Inc. It was created by Kevin Systrom and Mike Krieger",
              ),
              SocialMediaCard(
                image: "assets/image/dads.png",
                description:
                    "Instagram is a photo and video-sharing social networking service owned by Facebook, Inc. It was created by Kevin Systrom and Mike Krieger",
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
          Text(
            "See our feed for more School of X magic!",
            style: TextStyle(
              color: Colors.black,
              fontSize: size.width / 80,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ButtonWidget1(text: "View More", onpressed: () {})
        ],
      ),
    );
  }
}
