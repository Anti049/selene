import 'package:change_case/change_case.dart';
import 'package:selene/domain/entities/author_entity.dart';
import 'package:selene/domain/entities/tag_entity.dart';
// import 'package:selene/domain/entities/tag_entity.dart';
// Note: No Isar or Freezed annotations here!
// You can use plain classes or Freezed if you want immutability,
// but avoid database-specific annotations.

// Using a simple class for clarity:

class WorkEntity {
  final String id; // Use a unique ID (could be URL or a generated UUID)
  final String title;
  final String url; // Source URL
  final List<AuthorEntity> authors; // Simplified for example
  final String? description;
  final int? wordCount;
  final WorkStatus status;
  final List<TagEntity> tags; // Simplified for example
  final String? coverURL; // Optional cover URL

  // Consider adding fields like word count, last updated, etc.

  WorkEntity({
    required this.title,
    required this.url,
    required this.authors,
    this.description,
    this.wordCount,
    this.status = WorkStatus.unknown,
    this.tags = const [],
    this.coverURL,
  }) : id = title.toKebabCase().replaceAll(
         RegExp(r'[^a-zA-Z0-9-]'),
         '',
       ); // Generate ID from title

  // You can add business logic methods here if needed, e.g.:
  bool get isCompleted => status == WorkStatus.completed;

  String get authorNames {
    return authors.map((author) => author.name).join(', ');
  }

  List<TagEntity> getTagsByType(TagType type) {
    return tags.where((tag) => tag.type == type).toList();
  }
}

// Re-define enums here or move them to a common domain location if shared
enum WorkStatus {
  unknown('Unknown'),
  completed('Completed'),
  inProgress('In-Progress'),
  abandoned('Abandoned'),
  onHiatus('On Hiatus');

  const WorkStatus(this.label);

  final String label;
}
