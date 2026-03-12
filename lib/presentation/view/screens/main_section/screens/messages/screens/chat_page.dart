import 'package:duty_doctor/presentation/view/shared/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(titleText: "KMCH Hospital"),
      body: Column(),
    );
  }
}
