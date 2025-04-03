import 'package:change_case/change_case.dart';
import 'package:selene/domain/entities/work_entity.dart';

class TagEntity {
  final String id;
  final String name;
  final String? url;
  final String? description;
  final TagType type;
  final List<WorkEntity> works;

  /// Creates a [TagEntity] with the given [name], [url], [description], and [type].
  ///
  /// The [id] is generated from the [name] by converting it to kebab case and removing any non-alphanumeric characters (EXCEPT dashes and forward slashes).
  ///
  /// The [works] list is initialized to an empty list by default.
  TagEntity({
    required this.name,
    this.url,
    this.description,
    this.type = TagType.other,
    this.works = const [],
  }) : id = name.toKebabCase().replaceAll(RegExp(r'[^a-zA-Z0-9-/]'), '');
}

enum TagType {
  info,
  fandom,
  character,
  friendship,
  relationship,
  freeform,
  other,
}
