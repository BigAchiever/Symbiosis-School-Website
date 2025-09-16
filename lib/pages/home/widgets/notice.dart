import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marquee/marquee.dart';
import 'package:symbiosis_school_jabalpur/pages/notifications/notification_model.dart';

class NoticeHeader extends StatefulWidget {
  const NoticeHeader({super.key});

  @override
  State<NoticeHeader> createState() => _NoticeHeaderState();
}

class _NoticeHeaderState extends State<NoticeHeader> {
  // Use the static list from NotificationModel
  final List<NotificationModel> notices = NotificationModel.getDefaultNotices();

  void _onViewAllPressed() {
    context.go('/notifications', extra: notices);
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final String combinedText =
        notices.map((notice) => notice.toString()).join("  •  ");

    return Container(
      height: size.height * 0.06,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.yellow[100],
        border: Border.all(
          color: Colors.redAccent,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Marquee(
                text: combinedText,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent,
                  fontFamily: "Dan Sirf",
                ),
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                blankSpace: 20.0,
                velocity: 50.0,
                pauseAfterRound: const Duration(seconds: 1),
                startPadding: 10.0,
                accelerationDuration: const Duration(seconds: 1),
                accelerationCurve: Curves.linear,
                decelerationDuration: const Duration(milliseconds: 500),
                decelerationCurve: Curves.easeOut,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SizedBox(
              height: size.height * 0.035,
              child: ElevatedButton(
                onPressed: _onViewAllPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Dan Sirf",
                  ),
                ),
                child: const Text("View All"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
