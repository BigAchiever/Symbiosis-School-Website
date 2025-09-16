import 'package:flutter/material.dart';

class TextSlider extends StatefulWidget {
  final ValueChanged<int> onSectionSelected;
  final int selectedIndex;

  const TextSlider({
    super.key,
    required this.onSectionSelected,
    required this.selectedIndex,
  });

  @override
  _TextSliderState createState() => _TextSliderState();
}

class _TextSliderState extends State<TextSlider> {
  final List<String> texts = [
    'The Future',
    'Childrens',
    'Team Work',
  ];
  int currentIndex = 0;
  bool slideToLeft = false;

  void goToNext() {
    setState(() {
      currentIndex = (currentIndex + 1) % texts.length;
      slideToLeft = true;
    });
    widget.onSectionSelected(currentIndex);
  }

  void goToPrevious() {
    setState(() {
      currentIndex = (currentIndex - 1 + texts.length) % texts.length;
      slideToLeft = false;
    });
    widget.onSectionSelected(currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.2,
      height: size.height / 16,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              alignment: Alignment.center,
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: goToPrevious,
            ),
            const VerticalDivider(
              color: Colors.white,
              thickness: 1,
            ),
            Container(
              width: size.width / 2.2,
              alignment:
                  slideToLeft ? Alignment.centerLeft : Alignment.centerRight,
              child: Center(
                child: Text(
                  texts[currentIndex],
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Magic Brush",
                      color: Colors.white),
                ),
              ),
            ),
            const VerticalDivider(
              color: Colors.white,
              thickness: 1,
            ),
            IconButton(
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              onPressed: goToNext,
            ),
          ],
        ),
      ),
    );
  }
}
