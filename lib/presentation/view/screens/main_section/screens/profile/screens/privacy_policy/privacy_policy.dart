import 'package:duty_doctor/app.dart';

import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(titleText: 'Privacy policy'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: ListView(
          children: [
            const SizedBox(height: 15),
            const TitleSubTitleWidget(
              title: 'Effective Date : 26 June, 2025',
              gap: 5,
              subtitle:
                  'Duty Doctor("we","our" or "us") is committed to protecting your privacy. This Privacy Policy explains how we collect, use and safegruard your information when you use our mobile application("App"). By using the App, you agree to the terms of this Privacy Policy',
            ),
            const SizedBox(height: 15),
            const TitleSubTitleWidget(
              title: '1. Information We Collect',
              gap: 5,
              subtitleWidget: Column(
                children: [
                  BulletPointText(
                    text: 'Mandatory Information (for Account Creation)',
                    bullet: 'A. ',
                  ),
                  BulletPointText(text: 'Full Name', leftPadding: 10),
                  BulletPointText(text: 'Phone number', leftPadding: 10),
                  BulletPointText(text: 'Email Address', leftPadding: 10),
                  BulletPointText(
                    text: 'Latest Degree Details',
                    leftPadding: 10,
                  ),
                  BulletPointText(text: 'Degree Name', leftPadding: 30),
                  BulletPointText(text: 'Institute Name', leftPadding: 30),
                  BulletPointText(text: 'Country', leftPadding: 30),
                  BulletPointText(
                    text: 'Degree completion(Yes or No)',
                    leftPadding: 30,
                  ),
                  BulletPointText(text: 'Degree Start date', leftPadding: 30),
                  BulletPointText(
                    text: 'Degree End date(If completed)',
                    leftPadding: 30,
                  ),
                  BulletPointText(text: 'Speciality(if any)', leftPadding: 30),
                  BulletPointText(
                    text: 'Medical Registration number(if MBBS completed)',
                    leftPadding: 30,
                  ),
                  BulletPointText(
                    text: 'Optional/Functional Information',
                    bullet: 'B. ',
                  ),
                  BulletPointText(
                    text:
                        'Location(via search or GPS) : Used to recommend relevant duties based on geographical proximity',
                    leftPadding: 10,
                  ),
                  BulletPointText(
                    text:
                        'Certificates/Qualifications(Uploaded as images or documents) : Used for profile verification when applying for duties.',
                    leftPadding: 10,
                  ),
                  BulletPointText(
                    text: 'Work Experience details',
                    leftPadding: 10,
                  ),
                  BulletPointText(
                    text: 'Personal details such as address, gender, about',
                    leftPadding: 10,
                  ),
                  BulletPointText(text: 'Skills', leftPadding: 10),
                  BulletPointText(text: 'Preferred locations', leftPadding: 10),
                  BulletPointText(text: 'Expected salary', leftPadding: 10),
                  BulletPointText(
                    text: 'Online profiles such as linkedin profile etc.',
                    leftPadding: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const TitleSubTitleWidget(
              title: '2. How We Use Your Information',
              gap: 5,
              subtitleWidget: Column(
                children: [
                  Text('We use your information for the following purposes:'),
                  BulletPointText(text: 'To create and manage your account'),
                  BulletPointText(
                    text:
                        'To match doctors with relevant duty opportunities based on profile and location',
                  ),
                  BulletPointText(
                    text:
                        'To verify qualifications during the duty application process',
                  ),
                  BulletPointText(
                    text:
                        'To enable communication between selected doctors and hospitals',
                  ),
                  BulletPointText(
                    text: 'To improve the app\'s performance and features',
                  ),
                  BulletPointText(text: 'To respond to user support requests'),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const TitleSubTitleWidget(
              title: '3. Data Sharing and Disclosure',
              subtitleWidget: Column(
                children: [
                  Text(
                    'We do not sell or rent your personal data. Information may be shared only under the following conditions:',
                  ),
                  BulletPointText(
                    text:
                        'With hospitals or recruiters when you apply for duties',
                  ),
                  BulletPointText(
                    text:
                        'With service providers who assist in operating the app(under strict confidentiality agreements)',
                  ),
                  BulletPointText(
                    text:
                        'When required by law or to protect our rights and safety',
                  ),
                ],
              ),
              gap: 5,
            ),
            const SizedBox(height: 15),
            const TitleSubTitleWidget(
              title: '4. Data Security',
              gap: 5,
              subtitle:
                  'We implement appropriate technical and organizational measures to protect your personal information. This includes data encryption, secure server storage, and access controls.',
            ),
            const SizedBox(height: 15),
            const TitleSubTitleWidget(
              title: '5. Your Rights',
              subtitleWidget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('You have the right to :'),
                  BulletPointText(text: 'Access you data'),
                  BulletPointText(text: 'Update or correct your information'),
                  BulletPointText(
                    text:
                        'Deactivate or delete your account at any time via the app',
                  ),
                  Text(
                    'Upon deletion, your data will be permanently removed from our active databases, unless we are legally requierd to retain it for a specific duration.',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const TitleSubTitleWidget(
              title: '6. Data Retention',
              subtitle:
                  'We retain your personal data only as long as necessary to provide services and fulfill the purposes outlined above, or as required by law.',
            ),
            const SizedBox(height: 15),
            const TitleSubTitleWidget(
              title: '7. Changes to This Policy',
              subtitle:
                  'We may update this Privacy Policy from time to time. Any changes will be posted within the app and, where appropriate, notified to you.',
            ),
            const SizedBox(height: 15),
            TitleSubTitleWidget(
              title: '8. Contact Us',
              subtitleWidget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'If you have questions or concerns about this Privacy Policy, contact us at:',
                  ),
                  const SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      text: 'Email : ',
                      style: const TextStyle(
                        fontFamily: 'Lufga',
                        color: AppColors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'dutydoctordevelopment@gmail.com',
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              var url = Uri.parse(
                                'mailto:dutydoctorhelp@gmail.com',
                              );
                              launchUrl(url);
                            },
                          style: const TextStyle(color: AppColors.primaryColor),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'App support Section : Availabe in the app under "Help & Support"',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

class BulletPointText extends StatelessWidget {
  final double leftPadding;
  final String? bullet;
  final String text;
  const BulletPointText({
    super.key,
    this.leftPadding = 0,
    this.bullet,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: leftPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(bullet ?? '• '),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}

class TitleSubTitleWidget extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? subtitleWidget;
  final TextStyle? titleStyle;
  final TextStyle? subTitleStyle;
  final double gap;
  const TitleSubTitleWidget({
    super.key,
    required this.title,
    this.subtitle,
    this.subtitleWidget,
    this.titleStyle,
    this.subTitleStyle,
    this.gap = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style:
              titleStyle ??
              CustomTextStyles.lufgaText.copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(height: gap),
        subtitleWidget == null
            ? Text(
                subtitle ?? '',
                overflow: TextOverflow.ellipsis,
                maxLines: 100,
                style: subTitleStyle ?? CustomTextStyles.lufgaText,
              )
            : subtitleWidget!,
      ],
    );
  }
}
