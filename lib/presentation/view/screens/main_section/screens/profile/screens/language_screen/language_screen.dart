// ignore_for_file: deprecated_member_use

import 'package:duty_doctor/app.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  String groupValue = "en";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: 'Language'),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: ListView(
          children: [
            Text(
              "Change your language",
              style: CustomTextStyles.lufgaText.copyWith(fontSize: 19.sp),
            ),
            Text(
              "Please select your comfortable language.",
              style: CustomTextStyles.lufgaText.copyWith(
                fontSize: 13.sp,
                fontFamily: 'light',
              ),
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Text('தமிழ்', style: CustomTextStyles.lufgaText),
                const Spacer(),
                Radio(
                  value: 'ta',
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text('English', style: CustomTextStyles.lufgaText),
                const Spacer(),
                Radio(
                  value: 'en',
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text('മലയാളം', style: CustomTextStyles.lufgaText),
                const Spacer(),
                Radio(
                  value: 'ml',
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text('हिन्दी', style: CustomTextStyles.lufgaText),
                const Spacer(),
                Radio(
                  value: 'hi',
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text('తెలుగు', style: CustomTextStyles.lufgaText),
                const Spacer(),
                Radio(
                  value: 'te',
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text('ಕನ್ನಡ', style: CustomTextStyles.lufgaText),
                const Spacer(),
                Radio(
                  value: 'kn',
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
              ],
            ),
            Row(
              children: [
                const Text('मराठी', style: CustomTextStyles.lufgaText),
                const Spacer(),
                Radio(
                  value: 'mr',
                  groupValue: groupValue,
                  onChanged: (value) {
                    setState(() {
                      groupValue = value!;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
