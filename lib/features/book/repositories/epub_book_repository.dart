import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:selene/core/utils/isar_id.dart';
import 'package:selene/domain/entities/author_entity.dart';
import 'package:selene/domain/entities/tag_entity.dart';
import 'package:selene/domain/entities/work_entity.dart';
import 'package:selene/features/book/models/book.dart';
import 'package:selene/features/book/repositories/book_repository.dart';
import 'package:epubx/epubx.dart';
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

    final bytes = await file.readAsBytes();
    if (bytes.isEmpty) {
      throw Exception('File is empty or could not be read');
    }

    EpubBook epubBook = await EpubReader.readBook(bytes);
    final metadata = epubBook.Schema?.Package?.Metadata;

    // Title
    final title = epubBook.Title;
    if (title == null || title.isEmpty) {
      throw Exception('The EPUB file does not contain a title');
    }

    // Author(s)
    final authorNames = epubBook.AuthorList;
    final authors = <AuthorEntity>[];
    for (final name in authorNames ?? []) {
      if (name == null || name.isEmpty) {
        // Skip empty author names to avoid creating invalid entities
        continue;
      }
      authors.add(
        AuthorEntity(
          id: generateID(text: name),
          name: name,
          url: 'https://www.archiveofourown.org/users/$name',
        ),
      );
    }
    if (authorNames == null || authorNames.isEmpty || authors.isEmpty) {
      throw Exception('The EPUB file does not contain any authors');
    }

    // Description (if available)
    String description = metadata?.Description ?? '';
    description = description.replaceAll(r'\s*<br \/>\s*', '\n').trim();

    // Tags (if available)
    final tagStrings = metadata?.Subjects ?? [];
    final tags =
        tagStrings
            .map((tag) => TagEntity(name: tag, type: TagType.info))
            .toList();

    // URL
    String url = '';
    if (metadata?.Sources != null &&
        metadata!.Sources!.isNotEmpty &&
        metadata.Sources![0].isNotEmpty) {
      url = metadata.Sources![0];
    }

    // Create story
    final work = WorkEntity(
      title: title,
      url: url,
      authors: authors,
      description: description,
      tags: tags,
      wordCount: epubBook.Chapters?.length ?? 0,
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
