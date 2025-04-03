import 'dart:io';
import 'package:archive/archive_io.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:selene/domain/entities/author_entity.dart';
import 'package:selene/domain/entities/work_entity.dart';
import 'package:selene/features/book/models/book.dart';
import 'package:selene/features/book/repositories/book_repository.dart';
import 'package:xml/xml.dart';

part 'epub_book_repository.g.dart';

class EpubBookRepository implements IBookRepository {
  @override
  List<String> get extensions => ['epub'];

  @override
  String get format => 'epub';

  @override
  Future<Book> read(String path) async {
    final file = File(path);
    final Book book = Book(file: file);

    // Read zip file from disk
    var bytes = await file.readAsBytes();
    // Unzip file
    var archive = ZipDecoder().decodeBytes(bytes);
    // Read content.opf file
    var contentFile = archive.firstWhere(
      (file) => file.name.contains('content.opf'),
      orElse: () {
        throw Exception('content.opf not found');
      },
    );
    String content = String.fromCharCodes(contentFile.content);
    var contentXML = XmlDocument.parse(content);

    // Read metadata
    // - Title
    final title = contentXML.findAllElements('dc:title').first.innerText;
    // - Author
    final authors =
        contentXML.findAllElements('dc:creator').map((node) {
          return AuthorEntity(name: node.innerText, url: '');
        }).toList();
    // - Description (optional)
    String description = '';
    try {
      description =
          contentXML.findAllElements('dc:description').first.innerText;
    } catch (e) {
      // Do nothing
    }

    // Create story
    final work = WorkEntity(
      title: title,
      url: '',
      authors: authors,
      description: description,
    );
    book.work = work;

    return book;
  }

  @override
  Book readSync(String path) {
    // TODO: implement readSync
    throw UnimplementedError();
  }

  @override
  Future<void> write(Book book) {
    // TODO: implement write
    throw UnimplementedError();
  }

  @override
  void writeSync(Book book) {
    // TODO: implement writeSync
  }
}

@riverpod
IBookRepository epubBookRepository(Ref ref) {
  return EpubBookRepository();
}
