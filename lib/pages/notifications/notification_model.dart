// symbiosis_school_jabalpur/pages//models/notification_model.dart
class NotificationModel {
  final String header;
  final String message;
  final String date;
  final String? link;

  NotificationModel({
    required this.header,
    required this.message,
    required this.date,
    this.link,
  });

  @override
  String toString() {
    return "$header: $message";
  }

  // Static list of default notices
  static List<NotificationModel> getDefaultNotices() {
    return [
      NotificationModel(
        header: "Important",
        message:
            "Admissions open for the new academic year 2025-26. Apply now!",
        date: "15th March 2025",
        // link: "https://google.com",
      ),
      NotificationModel(
        header: "Reminder",
        message: "This website is under construction. Please bear with us.",
        date: "13th March 2025",
        link: "https://google.com/",
      ),
      NotificationModel(
        header: "Alert",
        message: "Contact us at 0761 404 2089 for any queries.",
        date: "12th March 2025",
        link: "0761 404 2089",
      ),
    ];
  }
}
