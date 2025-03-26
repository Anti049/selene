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
  String? author;
  final authors = IsarLinks<Author>();
  @enumerated
  FileStatus fileStatus;
  @enumerated
  StoryStatus status;
  final tags = IsarLinks<Tag>();
  String? description;
  int? chapterCount;

  Story({
    this.id = Isar.autoIncrement,
    required this.title,
    required this.url,
    this.author,
    this.fileStatus = FileStatus.none,
    this.status = StoryStatus.unknown,
    this.description,
    this.chapterCount,
  });

  Story.fromJson(Map<String, dynamic> json)
    : id = json['id'] as int?,
      title = json['title'] as String?,
      url = json['url'] as String?,
      author = json['author'] as String?,
      fileStatus = FileStatus.values.firstWhere(
        (e) => e.name == json['fileStatus'],
        orElse: () => FileStatus.none,
      ),
      status = StoryStatus.values.firstWhere(
        (e) => e.name == json['status'],
        orElse: () => StoryStatus.unknown,
      ),
      description = json['description'] as String?,
      chapterCount = json['chapterCount'] as int?;

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'url': url,
    'author': author,
    'fileStatus': fileStatus.name,
    'status': status.name,
    'description': description,
    'chapterCount': chapterCount,
  };
}
