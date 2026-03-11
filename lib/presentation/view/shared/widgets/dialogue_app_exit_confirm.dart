import 'package:duty_doctor/app.dart';

Future<bool> showConfirmExitDialogue(BuildContext context) async {
  bool canPop =
      await showDialogueCustomWithGlassyBackground(
        context,
        const ConfirmExitDialogue(),
      ).then((value) {
        return value ?? false;
      });
  return canPop;
}

class ConfirmExitDialogue extends StatelessWidget {
  const ConfirmExitDialogue({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Confirm Exit!',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          const Text('Are you sure,You want exit from the app?'),
          const SizedBox(height: 20),
          Row(
            children: [
              const Spacer(flex: 1),
              Expanded(
                flex: 2,
                child: CustomButton(
                  borderRadius: 10,
                  vPadding: 8,
                  buttonColor: AppColors.white,
                  textColor: AppColors.primaryColor,
                  label: 'Cancel',
                  onTap: () {
                    context.pop(false);
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 2,
                child: CustomButton(
                  borderRadius: 10,
                  vPadding: 8,
                  label: 'confirm',
                  onTap: () {
                    context.pop(true);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
