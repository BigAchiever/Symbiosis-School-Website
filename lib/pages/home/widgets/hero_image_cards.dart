import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double borderRadius;
  final double padding;

  const CustomCard({
    super.key,
    required this.imageUrl,
    required this.title,
    this.borderRadius = 12.0,
    this.padding = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            border: const Border(
              top: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
              right: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
              bottom: BorderSide(
                color: Colors.black,
                width: 4.0,
              ),
              left: BorderSide(
                color: Colors.black,
                width: 4.0,
              ),
            ),
          ),
          width: 300,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(borderRadius),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(borderRadius),
                    child: Image(
                      fit: BoxFit.cover,
                      image: AssetImage(imageUrl),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(padding),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            ],
          ),
        ));
  }
}
