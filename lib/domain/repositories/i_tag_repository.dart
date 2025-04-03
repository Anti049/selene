import 'package:selene/domain/entities/tag_entity.dart';

abstract interface class ITagRepository {
  Future<List<TagEntity>> getTags();
  Future<void> deleteTags(List<String> ids);
  Future<TagEntity?> getTagFromID(String id);
  Future<void> saveTag(TagEntity tag);
  Future<void> deleteTag(String id);
}
