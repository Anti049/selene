import 'package:selene/features/book/models/book.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

abstract interface class IBookRepository {
  IBookRepository({required this.format, required this.extensions});

  final String format;
  final List<String> extensions;

  Future<Book> read(String path);
  Book readSync(String path);
  Future<void> write(Book book);
  void writeSync(Book book);
}

@riverpod
IBookRepository bookRepository(Ref ref) {
  throw UnimplementedError();
}
