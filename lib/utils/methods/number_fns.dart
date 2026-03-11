String convertToShortenedString(double num) {
  double k = 1000;
  double l = 100000;
  double cr = 10000000;
  String result = '';
  if (num / cr >= 1) {
    double r = num / cr;
    result = '${r.toStringAsFixed(0)}Cr';
  } else if (num / l >= 1) {
    double r = num / l;
    result = '${r.toStringAsFixed(0)}L';
  } else if (num / k >= 1) {
    double r = num / k;
    result = '${r.toStringAsFixed(0)}K';
  } else {
    result = '${num.toInt()}';
  }

  return result;
}
