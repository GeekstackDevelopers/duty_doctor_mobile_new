import 'package:duty_doctor/presentation/view/screens/main_section/screens/profile/screens/helpcenter_section/widgets/contact_us_tile.dart';
import 'package:duty_doctor/presentation/view/screens/main_section/screens/profile/screens/helpcenter_section/widgets/customer_service_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsSection extends StatelessWidget {
  const ContactUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CustomerServiceWidget(),
        ContactUsTile(
          onTap: () {
            var url = Uri.parse('https://wa.me/qr/QX4NTVONNRD4G1');
            launchUrl(url);
          },
          title: 'Whatsapp',
          asset: 'assets/contact_us_icons/whatsapp_icon.svg',
        ),
        ContactUsTile(
          asset: 'assets/contact_us_icons/website_icon1.svg',
          title: 'Website',
          onTap: () {
            var url = Uri.parse('https://www.google.com');
            launchUrl(url);
          },
        ),
        ContactUsTile(
          asset: 'assets/contact_us_icons/insta_icon.svg',
          title: 'Instagram',
          onTap: () {
            var url = Uri.parse('https://www.instagram.com');
            launchUrl(url);
          },
        ),
        ContactUsTile(
          asset: 'assets/contact_us_icons/fb_icon.svg',
          title: 'Facebook',
          onTap: () {
            var url = Uri.parse('https://www.facebook.com');
            launchUrl(url);
          },
        ),
        ContactUsTile(
          asset: 'assets/contact_us_icons/twitter_icon.svg',
          title: 'Twitter',
          onTap: () {
            var url = Uri.parse('https://twitter.com/explore');
            launchUrl(url);
          },
        ),
      ],
    );
  }
}
