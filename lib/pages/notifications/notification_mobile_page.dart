import 'package:flutter/material.dart';
import 'package:symbiosis_school_jabalpur/pages/notifications/notification_model.dart';
import 'package:symbiosis_school_jabalpur/widgets/launch_phone.dart';
import 'package:url_launcher/url_launcher.dart';

class NotificationsPage extends StatelessWidget {
  final List<NotificationModel>? notices;

  const NotificationsPage({super.key, this.notices});

  @override
  Widget build(BuildContext context) {
    final List<NotificationModel> displayNotices =
        notices ?? NotificationModel.getDefaultNotices();
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.yellow,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Notifications",
              style: TextStyle(
                fontSize: size.width / 10,
                fontFamily: "Magic Brush",
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: displayNotices.length,
                itemBuilder: (context, index) {
                  final notice = displayNotices[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Card(
                      elevation: 4, // Subtle shadow for depth
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: const BorderSide(
                          color: Colors.black54,
                          width: 1.5,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Header and Message
                            Text(
                              "${notice.header}:",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: notice.header == "Important"
                                    ? Colors.redAccent
                                    : notice.header == "Reminder"
                                        ? Colors.blueAccent
                                        : Colors.orangeAccent,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              notice.message,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 12),
                            // Date and Link Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Date
                                Text(
                                  "Date: ${notice.date}",
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                // Link (if available)
                                if (notice.link != null)
                                  GestureDetector(
                                    onTap: () async {
                                      final uri = Uri.parse(notice.link!);
                                      if (await canLaunchUrl(uri)) {
                                        await launchUrl(uri);
                                      }
                                      // to launch phone number
                                      else if (await canLaunch(
                                          "tel:${notice.link}")) {
                                        await LaunchPhone()
                                            .launchPhone(notice.link!);
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          const SnackBar(
                                              content: Text(
                                                  "Could not launch link")),
                                        );
                                      }
                                    },
                                    child: Text(
                                      "Click Here",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w600,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
