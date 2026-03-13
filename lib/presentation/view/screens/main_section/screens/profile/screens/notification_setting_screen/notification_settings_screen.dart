import 'package:duty_doctor/app.dart';

class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: 'Notification'),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            const SizedBox(height: 10),
            Text(
              'Email notification',
              style: CustomTextStyles.lufgaText.copyWith(fontSize: 18),
            ),
            Text(
              'You\'ve got updates check out what\'s new',
              style: CustomTextStyles.lufgaText.copyWith(fontSize: 12),
            ),
            const SwitchTile(
              title: 'News and updates',
              subtitle: 'Important announcements you need to know',
            ),
            const SwitchTile(
              title: 'Reminder',
              subtitle: 'Upcoming hospital events and deadlines',
            ),
            const SwitchTile(
              title: 'Urgent',
              subtitle: 'Health and safety Updates',
            ),
            const SwitchTile(
              title: 'Stay informed',
              subtitle: 'Key Admin Announcements',
            ),
            const SizedBox(height: 25),
            Text(
              'Push notification',
              style: CustomTextStyles.lufgaText.copyWith(fontSize: 18),
            ),
            Text(
              'Get push notification in - app to find out what\'s going on when you\'re online and offline',
              style: CustomTextStyles.lufgaText.copyWith(fontSize: 12),
            ),
            const SwitchTile(
              title: 'Job alert\'s',
              subtitle: 'Upcoming hospital events and deadlines',
            ),
            const SwitchTile(
              title: 'Reminder',
              subtitle: 'Health and Safety Updates',
            ),
          ],
        ),
      ),
    );
  }
}
