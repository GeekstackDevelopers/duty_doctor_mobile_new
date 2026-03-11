import 'package:duty_doctor/app.dart';

class RefreshScreen extends StatelessWidget {
  final void Function() refresh;
  const RefreshScreen({super.key, required this.refresh});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Something went wrong', style: TextStyle()),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: refresh,
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Tap to ', style: TextStyle()),
                  Text(
                    'Refresh',
                    style: TextStyle(color: AppColors.primaryColor),
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
