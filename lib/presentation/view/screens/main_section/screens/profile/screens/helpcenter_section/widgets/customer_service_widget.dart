import 'package:duty_doctor/app.dart';
import 'package:url_launcher/url_launcher.dart';
import 'expanding_widget.dart';

class CustomerServiceWidget extends StatelessWidget {
  const CustomerServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpandableWidget(
      expandIcon: const Icon(
        Icons.keyboard_arrow_down_outlined,
        key: ValueKey('a'),
      ),
      shrinkIcon: const Icon(
        Icons.keyboard_arrow_down_outlined,
        key: ValueKey('b'),
      ),
      leading: SvgPicture.asset(
        'assets/contact_us_icons/customer_sevice_icon.svg',
      ),
      title: 'Customer service',
      content: '',
      contentWidget: Column(
        children: [
          const SizedBox(height: 5),
          Row(
            children: [
              const Text('• Mail us:', style: CustomTextStyles.lufgaText),
              GestureDetector(
                onTap: () {
                  var url = Uri.parse('mailto:dutydoctorhelp@gmail.com');
                  launchUrl(url);
                },
                child: const Text(
                  ' dutydoctorhelp@gmail.com',
                  style: TextStyle(color: AppColors.primaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(height: 5),
          Row(
            children: [
              const Text('• Call us:', style: CustomTextStyles.lufgaText),
              GestureDetector(
                onTap: () {
                  var url = Uri.parse('tel:044-473-9383');
                  launchUrl(url);
                },
                child: Text(' 044-473-9383', style: CustomTextStyles.linkText),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
