String replaceUnderscoresToSpaces(String text) {
  return text.replaceAll('_', ' ');
}

String beautifySnake(String text) {
  return replaceUnderscoresToSpaces(text).capitalize();
}

extension StringExtension on String {
  String capitalize() {
    return '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
  }
}
