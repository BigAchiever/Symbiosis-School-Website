//hover underline
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FooterLinkItem extends StatefulWidget {
  final String title;
  final String route;

  const FooterLinkItem({super.key, required this.title, required this.route});

  @override
  _FooterLinkItemState createState() => _FooterLinkItemState();
}

class _FooterLinkItemState extends State<FooterLinkItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click, // Pointer cursor on hover
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () {
          context.go(widget.route);
        },
        child: Text(
          widget.title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black, // Base color
            decoration: _isHovered
                ? TextDecoration.underline
                : TextDecoration.none, // Underline on hover
          ),
          textAlign: TextAlign.start,
        ),
      ),
    );
  }
}
