/// Utilities on List<String>.
extension JoinExtension on List<String> {
  /// Joins the elements of the list with new line.
  String joinWithNewLine() => '${join('\n')}\n';
}

/// Utilities on String.
extension StringExtension on String {
  /// Returns the string without quotes.
  String get sanitize => replaceAll("'", '').trim();

  /// Returns true if the string equals `true`.
  bool toBool() => toLowerCase() == 'true';
}

/// Utilities on DateTime.
extension DateTimeExtension on DateTime {
  /// Returns the date in the format `dd-MM-yyyy`.
  String get ddMMyyyy {
    return '${day > 9 ? day : '0$day'}-${month > 9 ? month : '0$month'}-$year';
  }
}
