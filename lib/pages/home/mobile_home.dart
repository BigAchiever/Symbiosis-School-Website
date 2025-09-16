import 'package:flutter/material.dart';
import 'package:symbiosis_school_jabalpur/layout/footer/mobile_footer.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/mobile_feedback.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/mobile_main_page.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/mobile_school_info.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/mobile_sections.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/mobile_social_media.dart';
import 'package:symbiosis_school_jabalpur/pages/home/widgets/notice.dart';

import '../../widgets/bottom_picture_tab.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  late Image image1;
  late Image image2;

  @override
  void initState() {
    super.initState();
    image1 = Image.asset("assets/image/paper-background.png");
    image2 = Image.asset("assets/image/hero-background-1.png");
  }

  @override
  void didChangeDependencies() {
    precacheImage(image1.image, context);
    precacheImage(image2.image, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFCD02),
      body: ListView(
        // physics: const BouncingScrollPhysics(),
        children: [
          const NoticeHeader(),
          const SizedBox(
            height: 40,
          ),
          const MobileMainPage(),
          const MobileFeedBack(),
          const MobileSchoolInfo(),
          const MobileSection(),
          const MobileSocialMediaHome(),
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            child: const BottomPictureTab(),
          ),
          const MobileFootertab(),
        ],
      ),
    );
  }
}
