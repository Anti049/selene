import 'package:selene/domain/entities/author_entity.dart';

abstract interface class IAuthorRepository {
  Future<List<AuthorEntity>> getAuthors();
  Future<void> deleteAuthors(List<String> ids);
  Future<AuthorEntity?> getAuthorFromID(String id);
  Future<void> saveAuthor(AuthorEntity author);
  Future<void> deleteAuthor(String id);
}
