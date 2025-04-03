import 'dart:io';
import 'package:selene/domain/entities/work_entity.dart';

class Book {
  final File file;
  WorkEntity? work;

  Book({required this.file, this.work});

  String get extension => file.path.split('.').last;
}
