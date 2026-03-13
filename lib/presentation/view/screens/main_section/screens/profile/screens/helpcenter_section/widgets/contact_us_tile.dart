import 'package:duty_doctor/presentation/view/shared/widgets/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContactUsTile extends StatelessWidget {
  final String asset;
  final String title;
  final void Function()? onTap;
  const ContactUsTile({
    super.key,
    required this.asset,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: GestureDetector(
        onTap: onTap,
        child: CustomContainer(
          child: Row(
            children: [
              SvgPicture.asset(asset),
              const SizedBox(width: 10),
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
