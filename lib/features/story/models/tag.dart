import 'package:isar/isar.dart';

part 'tag.g.dart';

@Collection(ignore: {'copyWith'})
@Name('tags')
class Tag {
  Id? id;
  String? name;
  String? url;

  Tag({this.id = Isar.autoIncrement, required this.name, required this.url});

  Tag.fromJson(Map<String, dynamic> json)
    : id = json['id'] as int?,
      name = json['name'] as String?,
      url = json['url'] as String?;

  Map<String, dynamic> toJson() => {'id': id, 'name': name, 'url': url};
}
