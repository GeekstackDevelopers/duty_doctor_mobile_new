String formatAmount(num amount) {
  if (amount >= 10000000) {
    return '${(amount / 10000000).toStringAsFixed((amount % 10000000 == 0) ? 0 : 1)}Cr';
  } else if (amount >= 100000) {
    return '${(amount / 100000).toStringAsFixed((amount % 100000 == 0) ? 0 : 1)}L';
  } else {
    return amount.toString();
  }
}
