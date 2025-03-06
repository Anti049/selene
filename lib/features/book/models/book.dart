import 'dart:io';

import 'package:selene/features/story/models/story.dart';

class Book {
  final File file;
  Story? story;

  Book({required this.file, this.story});

  String get extension => file.path.split('.').last;
}
