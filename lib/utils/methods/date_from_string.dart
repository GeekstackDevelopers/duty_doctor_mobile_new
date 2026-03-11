DateTime dateTimeFromString(String string) {
  var list = string.split('-');
  return DateTime(int.parse(list[2]), int.parse(list[1]), int.parse(list[0]));
}
