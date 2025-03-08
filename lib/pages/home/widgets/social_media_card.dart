import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:symbiosis_school_jabalpur/layout/responsive.dart';

class SocialMediaCard extends StatefulWidget {
  final String description;
  final String image; // Now a network URL
  const SocialMediaCard({
    Key? key,
    required this.description,
    required this.image,
  }) : super(key: key);

  @override
  _SocialMediaCardState createState() => _SocialMediaCardState();
}

class _SocialMediaCardState extends State<SocialMediaCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
          border: Border(
            bottom: BorderSide(
              color: isHovered ? Colors.black : Colors.grey.withOpacity(0.4),
              width: isHovered ? 4 : 1,
            ),
            left: BorderSide(
              color: isHovered ? Colors.black : Colors.grey.withOpacity(0.4),
              width: isHovered ? 4 : 1,
            ),
            right: BorderSide(
              color: isHovered ? Colors.black : Colors.grey.withOpacity(0.4),
              width: 1,
            ),
            top: BorderSide(
              color: isHovered ? Colors.black : Colors.grey.withOpacity(0.4),
              width: 1,
            ),
          ),
        ),
        width: ResponsiveLayout.isMobile(context) ? 300 : size.width / 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 12.0, right: 12.0, top: 12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: CachedNetworkImage(
                    imageUrl: widget.image,
                    fit: BoxFit.cover,
                    height: 200, // Fixed height for consistency
                    width: double.infinity,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) {
                      print('Image load error for ${widget.image}: $error');
                      return const Icon(Icons.error);
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                widget.description,
                textAlign: TextAlign.start,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: "Dan Sirf",
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
