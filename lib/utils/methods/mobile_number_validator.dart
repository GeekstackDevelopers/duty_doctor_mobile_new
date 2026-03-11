bool validateMobileNumber(String? value) {
  final RegExp mobileRegex = RegExp(r'^[0-9]{10}$');

  if (value == null || value.isEmpty) {
    return false;
  } else if (!mobileRegex.hasMatch(value)) {
    return false;
  }
  return true;
}
