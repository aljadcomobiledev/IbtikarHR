part of 'NotificationsImports.dart';

@RoutePage()
class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  NotificationsData notifications = NotificationsData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GeneralColor.babyBlueBackground,
      body: Column(
        children: [
          const BuildMainHeader(
            title: "إشعارات إجتماعية",
          ),
          Expanded(
            child: SingleChildScrollView(
            child: BuildNotificationsPage(notificationData: notifications)
            ),
          ),
        ],
      ),
    );
  }
}
