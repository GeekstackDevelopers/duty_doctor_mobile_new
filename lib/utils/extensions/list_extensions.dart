extension ListExtension<T> on Iterable<T> {
  String toFormattedString() {
    return toList().join(', ');
  }
}
