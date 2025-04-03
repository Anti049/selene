import 'package:isar/isar.dart';
import 'package:selene/data/models/work.dart';
import 'package:selene/domain/entities/author_entity.dart';

part 'author.g.dart';

@Collection(ignore: {'copyWith'}) // Keep Isar annotation
@Name('authors')
class Author {
  // Isar requires an Id field
  Id isarId = Isar.autoIncrement; // Or use a custom ID strategy

  // Use a separate field for your domain ID if it's different (e.g., URL)
  @Index(unique: true, replace: true) // Make URL unique and replaceable
  String? id;

  String? name;
  String? url;

  @Backlink(to: 'authors')
  final works = IsarLinks<Work>();

  Author({required this.id, required this.name, this.url});

  // ---- MAPPING LOGIC ----

  // Example: Factory constructor to create Data Model from Domain Entity
  factory Author.fromEntity(AuthorEntity entity) {
    return Author(id: entity.id, name: entity.name, url: entity.url);
  }

  AuthorEntity toEntity() {
    return AuthorEntity(
      name: name ?? '',
      url: url,
      works: [], // Populate with linked works if needed
    );
  }
}
