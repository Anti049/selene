import 'package:isar/isar.dart';
import 'package:selene/data/models/author.dart';
import 'package:selene/domain/entities/author_entity.dart';
import 'package:selene/domain/repositories/i_author_repository.dart';

class AuthorRepositoryImpl implements IAuthorRepository {
  final Isar isar;

  AuthorRepositoryImpl(this.isar);

  @override
  Future<List<AuthorEntity>> getAuthors() async {
    // 1. Fetch the data models
    final authorDataModels = await isar.authors.where().findAll();

    // 2. Convert to domain entities
    final authors =
        authorDataModels.map((author) {
          return author.toEntity();
        }).toList();

    return authors;
  }

  @override
  Future<void> deleteAuthors(List<String> ids) async {
    // 1. Get list of data models that match supplied entities
    final authorDataModels = <Author>[];
    for (final id in ids) {
      final authorDataModel =
          await isar.authors.filter().idEqualTo(id).findFirst();
      if (authorDataModel != null) {
        authorDataModels.add(authorDataModel);
      }
    }

    // 2. Delete the data models
    await isar.writeTxn(() async {
      await isar.authors.deleteAll(
        authorDataModels.map((e) => e.isarId).toList(),
      );
      // Remove links AFTER removing the main entities
    });
  }

  @override
  Future<AuthorEntity?> getAuthorFromID(String id) async {
    // 1. Fetch the data model
    final authorDataModel =
        await isar.authors.filter().idEqualTo(id).findFirst();

    if (authorDataModel == null) {
      return null;
    }

    // 2. Convert to domain entity
    return authorDataModel.toEntity();
  }

  @override
  Future<void> saveAuthor(AuthorEntity author) async {
    // 1. Map the domain entity to a data model
    final authorDataModel = Author.fromEntity(author);

    // 2. Save the data model
    await isar.writeTxn(() async {
      await isar.authors.put(authorDataModel);
    });
  }

  @override
  Future<void> deleteAuthor(String id) async {
    // 1. Fetch the data model
    final authorDataModel =
        await isar.authors.filter().idEqualTo(id).findFirst();

    if (authorDataModel != null) {
      // 2. Delete the data model
      await isar.writeTxn(() async {
        await isar.authors.delete(authorDataModel.isarId);
      });
    }
  }
}
