import 'package:flutter/material.dart';

import 'widgets/expanding_widget.dart';

class FAQPage extends StatelessWidget {
  const FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ExpandableWidget(
          title: 'What is a Duty Doctor?',
          content:
              'A Duty Doctor is a medical professional available on call to handle urgent medical cases, provide advice and address health concersn outside regular consultation hours. They ensure continuity of carei n emergency or unpalnned situations.',
        ),
        ExpandableWidget(
          title: 'When should I contact the Duty Doctor?',
          content:
              'A Duty Doctor is a medical professional available on call to handle urgent medical cases, provide advice and address health concersn outside regular consultation hours. They ensure continuity of carei n emergency or unpalnned situations.',
        ),
        ExpandableWidget(
          title: 'How do I reach the Duty Doctor?',
          content:
              'A Duty Doctor is a medical professional available on call to handle urgent medical cases, provide advice and address health concersn outside regular consultation hours. They ensure continuity of carei n emergency or unpalnned situations.',
        ),
        ExpandableWidget(
          title: 'Is the Duty Doctor available 24/7?',
          content:
              'A Duty Doctor is a medical professional available on call to handle urgent medical cases, provide advice and address health concersn outside regular consultation hours. They ensure continuity of carei n emergency or unpalnned situations.',
        ),
        ExpandableWidget(
          title: 'Will the Duty Doctor visit my home?',
          content:
              'A Duty Doctor is a medical professional available on call to handle urgent medical cases, provide advice and address health concersn outside regular consultation hours. They ensure continuity of carei n emergency or unpalnned situations.',
        ),
        ExpandableWidget(
          title: 'Can Duty Doctor prescribe medication?',
          content:
              'A Duty Doctor is a medical professional available on call to handle urgent medical cases, provide advice and address health concersn outside regular consultation hours. They ensure continuity of carei n emergency or unpalnned situations.',
        ),
      ],
    );
  }
}
