import 'package:duty_doctor/app.dart';

void errorSnackBar(
  BuildContext context,
  String message, [
  double bottomPadding = 0,
]) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      margin: EdgeInsets.only(bottom: bottomPadding),
      duration: const Duration(seconds: 2),
      showCloseIcon: true,
      closeIconColor: Colors.white,
      behavior: SnackBarBehavior.floating,
      backgroundColor: const Color.fromARGB(255, 252, 74, 61),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.all(Radius.circular(10)),
      ),
      content: Text(message, style: CustomTextStyles.lufgaText),
    ),
  );
}

void snackBarResendOTP(BuildContext context, String mail) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 2),
      showCloseIcon: true,
      closeIconColor: Colors.white,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.green,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.all(Radius.circular(10)),
      ),
      content: Text('New OTP has sent to $mail'),
    ),
  );
}

void successSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      duration: const Duration(seconds: 2),
      showCloseIcon: true,
      closeIconColor: Colors.white,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.green,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.all(Radius.circular(10)),
      ),
      content: Text(message),
    ),
  );
}
