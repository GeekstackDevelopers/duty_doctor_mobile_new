import 'package:duty_doctor/app.dart';
import 'package:duty_doctor/data/mock/notification_mock.dart';
import 'package:duty_doctor/domain/model/notification_model.dart';
import 'package:duty_doctor/utils/methods/date_fns.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late final List<NotificationModel> _notifications;

  @override
  void initState() {
    super.initState();
    _notifications = List.from(mockNotifications);
  }

  void _removeNotification(NotificationModel notification) {
    setState(() {
      _notifications.remove(notification);
    });
  }

  Map<String, List<NotificationModel>> _groupedNotifications() {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));

    final Map<String, List<NotificationModel>> groups = {
      'Today': [],
      'Yesterday': [],
      'Before Week': [],
    };

    for (final notification in _notifications) {
      final nDate = DateTime(
        notification.time.year,
        notification.time.month,
        notification.time.day,
      );

      if (nDate == today) {
        groups['Today']!.add(notification);
      } else if (nDate == yesterday) {
        groups['Yesterday']!.add(notification);
      } else {
        groups['Before Week']!.add(notification);
      }
    }

    return groups;
  }

  @override
  Widget build(BuildContext context) {
    final grouped = _groupedNotifications();
    final hasNotifications = _notifications.isNotEmpty;

    return Scaffold(
      appBar: const CustomAppbar(titleText: "Notifications"),
      body: hasNotifications
          ? SafeArea(
              child: ListView(
                padding: .symmetric(horizontal: 16.w),
                children: [
                  for (final section in [
                    'Today',
                    'Yesterday',
                    'Before Week',
                  ]) ...[
                    if (grouped[section]!.isNotEmpty) ...[
                      Padding(
                        padding: .only(bottom: 15.h, top: 15.h),
                        child: Text(
                          section,
                          style: TextStyle(
                            fontSize: 15.sp,
                            // fontWeight: FontWeight.w600,
                            fontFamily: 'light',
                          ),
                        ),
                      ),
                      ...grouped[section]!.map(_buildNotificationTile),
                    ],
                  ],
                ],
              ),
            )
          : Center(
              child: Padding(
                padding: .only(bottom: 100.h),
                child: const Text("no notifications"),
              ),
            ),
    );
  }

  Widget _buildNotificationTile(NotificationModel notification) {
    return Dismissible(
      key: ValueKey(
        '${notification.title}_${notification.time.toIso8601String()}',
      ),
      direction: DismissDirection.endToStart,
      background: Container(
        decoration: BoxDecoration(
          // color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(16.r),
        ),
        alignment: Alignment.centerRight,
        padding: .only(right: 16.w),
        child: Icon(Icons.delete, color: AppColors.red, size: 24.w),
      ),
      onDismissed: (_) => _removeNotification(notification),
      child: Container(
        margin: .only(bottom: 15.h),
        decoration: BoxDecoration(
          color: AppColors.backgroudColor,
          borderRadius: .circular(16.r),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: .circular(122.r),
              child: Image.asset(
                'assets/images/temp/hospial_logo/image 12-2.png',
                width: 50.w,
                height: 50.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notification.title,
                    style: TextStyle(fontSize: 19.sp, height: 0),
                  ),
                  // SizedBox(height: 4.h),
                  Text(
                    notification.subtitle,
                    style: TextStyle(fontSize: 12.sp, fontFamily: 'light'),
                  ),
                  // SizedBox(height: 6.h),
                  Text(
                    timeAgo(notification.time),
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: AppColors.fontGrey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
