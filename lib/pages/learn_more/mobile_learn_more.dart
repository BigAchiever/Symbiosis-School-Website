import 'package:flutter/material.dart';

class MobileLearnMore extends StatefulWidget {
  const MobileLearnMore({super.key});

  @override
  State<MobileLearnMore> createState() => _MobileLearnMoreState();
}

class _MobileLearnMoreState extends State<MobileLearnMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFCD02),
      body: ListView(
          physics: const BouncingScrollPhysics(
              decelerationRate: ScrollDecelerationRate.normal),
          children: const [Text("hello world")]),
    );
  }
}
