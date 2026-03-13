// import 'package:duty_doctors/presentation/views/widgets/custom_showdialogue_glassy_background.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';

// import '../../../../../../../../../../config/colors.dart';
// import '../../../../../../../../../controllers/main_section_controllers/profile_section_controller.dart';
// import '../../../../../../../onboarding_section/welcome_screen/widgets/custom_button.dart';

// Future showDeactivateAccountDialogue(BuildContext context) async {
//   showDialogueCustomWithGlassyBackground(
//       context, const DeactivateAccountDialogue());
// }

// class DeactivateAccountDialogue extends StatelessWidget {
//   const DeactivateAccountDialogue({super.key});

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
//               'Deactivate Account?',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//             const Text(
//               'Are you sure you want to deactivate account. Once account deactivated you can activate by logging in again',
//               style: TextStyle(
//                 fontSize: 13,
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 const Spacer(
//                   flex: 1,
//                 ),
//                 Expanded(
//                   flex: 2,
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
//                   flex: 2,
//                   child: CustomButton(
//                     vPadding: 10,
//                     isLoading: Provider.of<ProfileSectionController>(context)
//                         .isLoading,
//                     fontSize: 12,
//                     textColor: Colors.white,
//                     buttonColor: AppColors.primaryColor,
//                     label: 'Deactivate',
//                     onTap: () {
//                       Provider.of<ProfileSectionController>(context,
//                               listen: false)
//                           .deactivateAccount(context);
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
