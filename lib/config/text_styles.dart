import '../app.dart';

class CustomTextStyles {
  static const TextStyle lufgaText = TextStyle(fontFamily: 'lufga');
  static final TextStyle greyLufgaText = lufgaText.copyWith(
    color: AppColors.grey,
  );
  static final TextStyle linkText = lufgaText.copyWith(
    color: AppColors.primaryColor,
  );
  static final TextStyle onboardingHead = lufgaText.copyWith(
    fontSize: 23,
    fontWeight: FontWeight.w600,
  );
  static final TextStyle mainScreenTitle = lufgaText.copyWith(fontSize: 22);
}
