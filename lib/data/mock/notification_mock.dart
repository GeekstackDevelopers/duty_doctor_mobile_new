import 'package:duty_doctor/domain/model/notification_model.dart';

final List<NotificationModel> mockNotifications = [
  NotificationModel(
    title: 'Appointment Confirmed',
    subtitle:
        'Your appointment with Dr. Kumar is confirmed for tomorrow at 11:00 AM.',
    time: DateTime.now().subtract(const Duration(minutes: 5)),
  ),
  NotificationModel(
    title: 'New Message',
    subtitle: 'You have received a new message from the clinic.',
    time: DateTime.now().subtract(const Duration(hours: 1, minutes: 12)),
  ),
  NotificationModel(
    title: 'Health Tip',
    subtitle: 'Drink 8 glasses of water today to stay hydrated.',
    time: DateTime.now().subtract(const Duration(hours: 3, minutes: 30)),
  ),
  NotificationModel(
    title: 'Lab Results Available',
    subtitle: 'Your blood test results are now available in the app.',
    time: DateTime.now().subtract(const Duration(days: 1, hours: 2)),
  ),
  NotificationModel(
    title: 'Prescription Reminder',
    subtitle: 'Time to take your medication: Vitamin D.',
    time: DateTime.now().subtract(const Duration(days: 2, hours: 5)),
  ),
];
