import 'package:isar/isar.dart';
import 'package:selene/data/models/work.dart';
import 'package:selene/domain/entities/tag_entity.dart';

part 'tag.g.dart';

@Collection(ignore: {'copyWith'}) // Keep Isar annotation
@Name('tags')
class Tag {
  // Isar requires an Id field
  Id isarId = Isar.autoIncrement; // Or use a custom ID strategy

  // Use a separate field for your domain ID if it's different (e.g., URL)
  @Index(unique: true, replace: true) // Make URL unique and replaceable
  String? id;
  String? name;
  String? url;
  @enumerated
  TagType type = TagType.other;

  @Backlink(to: 'tags')
  final works = IsarLinks<Work>();

  Tag({
    required this.id,
    required this.name,
    this.url,
    this.type = TagType.other,
  });

  // ---- MAPPING LOGIC ----

  // Example: Factory constructor to create Data Model from Domain Entity
  factory Tag.fromEntity(TagEntity entity) {
    return Tag(
      id: entity.id,
      name: entity.name,
      type: entity.type,
      url: entity.url,
    );
  }

  TagEntity toEntity() {
    return TagEntity(
      name: name ?? '',
      url: url,
      type: type,
      works: [], // Populate with linked works if needed
    );
  }
}
