import 'package:isar/isar.dart';
import 'package:selene/data/models/author.dart';
import 'package:selene/data/models/tag.dart';
import 'package:selene/domain/entities/author_entity.dart';
import 'package:selene/domain/entities/tag_entity.dart';
// import 'package:selene/data/models/author.dart';
// import 'package:selene/data/models/tag.dart';
// import 'package:selene/domain/entities/author_entity.dart';
// import 'package:selene/domain/entities/tag_entity.dart';
import 'package:selene/domain/entities/work_entity.dart';

part 'work.g.dart'; // Isar generated file

// Re-declare enums here or import if they live elsewhere (e.g., core/utils or domain)
enum FileStatus { none, inLibrary, downloading, downloaded, error }

@Collection(ignore: {'copyWith'}) // Keep Isar annotation
@Name('works')
class Work {
  // Isar requires an Id field
  Id isarId = Isar.autoIncrement; // Or use a custom ID strategy

  // Use a separate field for your domain ID if it's different (e.g., URL)
  @Index(unique: true, replace: true) // Make URL unique and replaceable
  String? id;

  String? title;
  String? url;
  int? wordCount;

  // Use IsarLinks for relationships to other Isar models
  final authors = IsarLinks<Author>();
  // final bookmarkedByAuthors = IsarLinks<Author>();
  final tags = IsarLinks<Tag>();

  @enumerated
  FileStatus fileStatus;
  @enumerated
  WorkStatus status;

  String? description;
  // Add other fields needed for storage (word count, etc.)
  String? coverURL;

  Work({
    // Don't require isarId in constructor
    required this.id,
    required this.title,
    required this.url,
    // this.author,
    this.fileStatus = FileStatus.none,
    this.status = WorkStatus.unknown,
    this.description,
    this.wordCount,
    this.coverURL,
  });

  // ---- MAPPING LOGIC ----

  // Example: Factory constructor to create Data Model from Domain Entity
  factory Work.fromEntity(
    WorkEntity entity,
    List<Author> authorModels,
    List<Tag> tagModels,
  ) {
    final work = Work(
      id: entity.id,
      title: entity.title,
      url: entity.url, // Use domain ID as unique key if desired
      description: entity.description,
      wordCount: entity.wordCount,
      status: entity.status,
      coverURL: entity.coverURL,
    );
    // Requires loading/saving links separately in repository
    work.authors.addAll(authorModels);
    work.tags.addAll(tagModels);
    return work;
  }

  // Example: Method to convert Data Model to Domain Entity
  WorkEntity toEntity(
    List<AuthorEntity> authorEntities,
    List<TagEntity> tagEntities,
  ) {
    return WorkEntity(
      title: title ?? '',
      url: url ?? '',
      description: description,
      wordCount: wordCount,
      status: status,
      authors: authorEntities,
      tags: tagEntities, // Simplified for example
      coverURL: coverURL,
    );
  }

  // Keep fromJson/toJson if needed for APIs, but they are less relevant for Isar-only usage
  // Work.fromJson(...)
  // Map<String, dynamic> toJson() => { ... };
}
