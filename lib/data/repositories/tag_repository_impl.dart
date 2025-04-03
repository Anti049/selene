import 'package:isar/isar.dart';
import 'package:selene/data/models/tag.dart';
import 'package:selene/domain/entities/tag_entity.dart';
import 'package:selene/domain/repositories/i_tag_repository.dart';

class TagRepositoryImpl implements ITagRepository {
  final Isar isar;

  TagRepositoryImpl(this.isar);

  @override
  Future<List<TagEntity>> getTags() async {
    // 1. Fetch the Tag data models
    final tagDataModels = await isar.tags.where().findAll();

    // 2. Convert to domain entities
    final tags =
        tagDataModels.map((tag) {
          return tag.toEntity();
        }).toList();

    return tags;
  }

  @override
  Future<void> deleteTags(List<String> ids) async {
    // 1. Get list of data models that match supplied entities
    final tagDataModels = <Tag>[];
    for (final id in ids) {
      final tagDataModel = await isar.tags.filter().idEqualTo(id).findFirst();
      if (tagDataModel != null) {
        tagDataModels.add(tagDataModel);
      }
    }

    // 2. Delete the data models
    await isar.writeTxn(() async {
      await isar.tags.deleteAll(tagDataModels.map((e) => e.isarId).toList());
      // Remove links AFTER removing the main entities
    });
  }

  @override
  Future<TagEntity?> getTagFromID(String id) async {
    // 1. Fetch the data model
    final tagDataModel = await isar.tags.filter().idEqualTo(id).findFirst();

    if (tagDataModel == null) {
      return null;
    }

    // 2. Convert to domain entity
    return tagDataModel.toEntity();
  }

  @override
  Future<void> saveTag(TagEntity tag) async {
    // 1. Convert the domain entity to a data model
    final tagDataModel = Tag.fromEntity(tag);

    // 2. Write the data model to the database
    await isar.writeTxn(() async {
      await isar.tags.put(tagDataModel);
    });
  }

  @override
  Future<void> deleteTag(String id) async {
    // 1. Fetch the data model
    final tagDataModel = await isar.tags.filter().idEqualTo(id).findFirst();

    if (tagDataModel != null) {
      // 2. Delete the data model
      await isar.writeTxn(() async {
        await isar.tags.delete(tagDataModel.isarId);
      });
    }
  }
}
