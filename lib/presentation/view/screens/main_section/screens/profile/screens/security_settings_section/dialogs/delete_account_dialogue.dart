// import 'package:duty_doctors/config/colors.dart';
// import 'package:duty_doctors/presentation/controllers/main_section_controllers/profile_section_controller.dart';
// import 'package:duty_doctors/presentation/views/screens/onboarding_section/welcome_screen/widgets/custom_button.dart';
// import 'package:duty_doctors/presentation/views/widgets/custom_showdialogue_glassy_background.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';

// Future<void> showDeleteAccountDialogue(BuildContext context) async {
//   await showDialogueCustomWithGlassyBackground(
//       context, const DeleteAccountDialogue());
// }

// class DeleteAccountDialogue extends StatelessWidget {
//   const DeleteAccountDialogue({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: Container(
//         margin: const EdgeInsets.all(25),
//         padding: const EdgeInsets.all(20),
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Delete Account',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//             const Text(
//               'Are you sure you want to delete the account',
//               style: TextStyle(
//                 fontSize: 13,
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 const Spacer(),
//                 Expanded(
//                   child: CustomButton(
//                     vPadding: 10,
//                     buttonColor: Colors.white,
//                     textColor: AppColors.primaryColor,
//                     fontSize: 12,
//                     label: 'cancel',
//                     onTap: () {
//                       context.pop();
//                     },
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Expanded(
//                   child: CustomButton(
//                     vPadding: 10,
//                     isLoading: Provider.of<ProfileSectionController>(context)
//                         .isLoading,
//                     fontSize: 12,
//                     textColor: Colors.white,
//                     buttonColor: AppColors.primaryColor,
//                     label: 'Delete',
//                     onTap: () {
//                       Provider.of<ProfileSectionController>(context,
//                               listen: false)
//                           .deleteAccount(context);
//                     },
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
