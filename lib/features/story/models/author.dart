import 'package:isar/isar.dart';
import 'package:selene/features/story/models/story.dart';

part 'author.g.dart';

@Collection(ignore: {'copyWith'})
@Name('authors')
class Author {
  Id? id;
  String? userID;
  String? name;
  String? url;
  @Backlink(to: 'authors')
  final stories = IsarLinks<Story>();

  Author({this.id = Isar.autoIncrement, required this.name, required this.url});

  Author.fromJson(Map<String, dynamic> json)
    : id = json['id'] as int?,
      userID = json['userID'] as String?,
      name = json['name'] as String?,
      url = json['url'] as String?;

  Map<String, dynamic> toJson() => {
    'id': id,
    'userID': userID,
    'name': name,
    'url': url,
  };
}
