import 'dart:math';

import 'package:change_case/change_case.dart';

String generateID({String? text}) {
  // If the text is null or empty, generate a random ID.
  if (text == null || text.trim().isEmpty) {
    // Generate random 8-digit alphanumeric ID if no text is provided.
    final r = Random();
    final randomID = String.fromCharCodes(
      List.generate(8, (index) => r.nextInt(33) + 89),
    );
    return randomID;
  }

  // Remove whitespace around every occurrence of the string, if any.
  final removeTrim = ['/', r'\\', '|'];
  for (final trim in removeTrim) {
    text = text!.replaceAll(
      RegExp(r'\s*\\\s*'),
      trim,
    ); // Handle escaped characters like \, /, |
  }

  /// Converts a string to a valid ID by converting it to kebab case and removing any non-alphanumeric characters (EXCEPT -, /, \, and |).
  return text!.toKebabCase().replaceAll(RegExp(r'[^a-zA-Z0-9-/\\]'), '');
}
