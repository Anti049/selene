import 'package:isar/isar.dart';
import 'package:selene/features/story/models/author.dart';
import 'package:selene/features/story/models/tag.dart';

part 'story.g.dart';

enum FileStatus { none, inLibrary, downloading, downloaded, error }

enum StoryStatus { unknown, completed, inProgress, abandoned, onHiatus }

@Collection(ignore: {'copyWith'})
@Name('stories')
class Story {
  Id? id;
  String? title;
  String? url;
  final authors = IsarLinks<Author>();
  @enumerated
  FileStatus fileStatus;
  @enumerated
  StoryStatus status;
  final tags = IsarLinks<Tag>();
  String? description;

  Story({
    this.id = Isar.autoIncrement,
    required this.title,
    required this.url,
    this.fileStatus = FileStatus.none,
    this.status = StoryStatus.unknown,
    this.description,
  });

  Story.fromJson(Map<String, dynamic> json)
    : id = json['id'] as int?,
      title = json['title'] as String?,
      url = json['url'] as String?,
      fileStatus = FileStatus.values.firstWhere(
        (e) => e.name == json['fileStatus'],
        orElse: () => FileStatus.none,
      ),
      status = StoryStatus.values.firstWhere(
        (e) => e.name == json['status'],
        orElse: () => StoryStatus.unknown,
      ),
      description = json['description'] as String?;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'url': url,
    'fileStatus': fileStatus.name,
    'status': status.name,
    'description': description,
  };
}
