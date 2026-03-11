import 'package:duty_doctor/app.dart';

class SwitchTile extends StatefulWidget {
  final String title;
  final String subtitle;
  const SwitchTile({super.key, required this.title, required this.subtitle});

  @override
  State<SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<SwitchTile> {
  bool switchStatus = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(height: 30, thickness: 0.2),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: CustomTextStyles.lufgaText.copyWith(fontSize: 16),
                  ),
                  Text(
                    widget.subtitle,
                    style: CustomTextStyles.lufgaText.copyWith(fontSize: 12),
                  ),
                ],
              ),
            ),
            Transform.scale(
              scale: 0.7,
              child: Switch(
                value: switchStatus,
                onChanged: (value) {
                  setState(() {
                    switchStatus = !switchStatus;
                  });
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
