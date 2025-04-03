import 'package:isar/isar.dart';
import 'package:selene/data/models/author.dart'; // Import Author model
import 'package:selene/data/models/tag.dart';
import 'package:selene/data/models/work.dart';
import 'package:selene/domain/entities/author_entity.dart'; // Import Author entity
import 'package:selene/domain/entities/tag_entity.dart';
import 'package:selene/domain/entities/work_entity.dart';
import 'package:selene/domain/repositories/i_work_repository.dart';

class WorkRepositoryImpl implements IWorkRepository {
  final Isar isar;

  WorkRepositoryImpl(this.isar);

  @override
  Future<List<WorkEntity>> getWorks() async {
    // 1. Fetch the Work data models
    final workDataModels = await isar.works.where().findAll();

    // 2. Prepare the list for domain entities
    final List<WorkEntity> workEntities = [];

    // 3. Iterate, load links, and map
    for (final workDataModel in workDataModels) {
      // Eagerly load the linked authors for this work
      await workDataModel.authors.load(); // <-- Load the links
      await workDataModel.tags.load(); // <-- Load the tags

      // Map the loaded Author data models to AuthorEntity domain objects
      final List<AuthorEntity> authorEntities =
          workDataModel.authors
              .map(
                (authorModel) => authorModel.toEntity(),
              ) // Assuming Author model has toEntity()
              .toList();

      // Map the loaded Tag data models to TagEntity domain objects
      final List<TagEntity> tagEntities =
          workDataModel.tags.map((tagModel) => tagModel.toEntity()).toList();

      // Map the Work data model (with loaded & mapped authors) to WorkEntity
      workEntities.add(
        workDataModel.toEntity(authorEntities, tagEntities),
      ); // <-- Pass mapped authors
    }

    // 4. Return the list of domain entities
    return workEntities;
  }

  // --- Other methods (getWorkFromID, saveWork, deleteWork, etc.) ---

  @override
  Future<WorkEntity?> getWorkFromID(String id) async {
    // 1. Fetch the data model
    final workDataModel = await isar.works.filter().idEqualTo(id).findFirst();

    if (workDataModel == null) {
      return null;
    }

    // 2. Load the links
    await workDataModel.authors.load(); // <-- Load links
    await workDataModel.tags.load(); // <-- Load tags

    // 3. Map authors
    final List<AuthorEntity> authorEntities =
        workDataModel.authors
            .map((authorModel) => authorModel.toEntity())
            .toList();

    // 4. Map tags
    final List<TagEntity> tagEntities =
        workDataModel.tags.map((tagModel) => tagModel.toEntity()).toList();

    // 4. Convert to domain entity
    return workDataModel.toEntity(
      authorEntities,
      tagEntities,
    ); // <-- Pass mapped authors
  }

  @override
  Future<void> saveWork(WorkEntity work) async {
    // Find or create Author data models first
    final List<Author> authorModels = [];
    for (final authorEntity in work.authors) {
      // Try to find existing author by domain ID (e.g., URL or unique username)
      Author? existingAuthor =
          await isar.authors.filter().idEqualTo(authorEntity.id).findFirst();
      if (existingAuthor == null) {
        // If not found, create a new one
        existingAuthor = Author.fromEntity(authorEntity);
        // Save the new author to get an isarId (optional if only linking)
        await isar.writeTxn(
          () async => await isar.authors.put(existingAuthor!),
        );
      }
      authorModels.add(existingAuthor);
    }

    // Find or create Tag data models if needed (similar to authors)
    final List<Tag> tagModels = [];
    for (final tagEntity in work.tags) {
      // Try to find existing tag by domain ID (e.g., URL or unique name)
      Tag? existingTag =
          await isar.tags.filter().idEqualTo(tagEntity.id).findFirst();
      if (existingTag == null) {
        // If not found, create a new one
        existingTag = Tag.fromEntity(tagEntity);
        // Save the new tag to get an isarId (optional if only linking)
        await isar.writeTxn(() async => await isar.tags.put(existingTag!));
      }
      tagModels.add(existingTag);
    }

    // 1. Map the domain entity to a data model, passing the author models
    //    (Modify your fromEntity if it needs the models directly,
    //     otherwise, just create the Work model and add links below)
    final workDataModel = Work.fromEntity(
      work,
      authorModels,
      tagModels,
    ); // Adjust fromEntity if needed

    // 2. Save the data model and links
    await isar.writeTxn(() async {
      await isar.works.put(workDataModel);
      // Explicitly add models to the link and save
      workDataModel.authors.clear(); // Clear existing links if updating
      workDataModel.authors.addAll(authorModels);
      workDataModel.tags.clear(); // Clear existing links if updating
      workDataModel.tags.addAll(tagModels);

      // Save the links
      // Note: This is optional if you are using Isar's auto-linking feature
      // but it's a good practice to ensure the links are saved correctly.
      await workDataModel.authors.save(); // Save the links
      await workDataModel.tags.save(); // Save the tags
    });
  }

  @override
  Future<void> deleteWorks(List<String> ids) async {
    // Convert domain IDs to Isar internal IDs
    final List<int> isarIds = [];
    for (final id in ids) {
      final work = await isar.works.filter().idEqualTo(id).findFirst();
      if (work != null) {
        isarIds.add(work.isarId);
      }
    }

    if (isarIds.isEmpty) return;

    await isar.writeTxn(() async {
      // Deleting the Work object automatically removes incoming links (like Author's works link)
      // but does NOT delete the linked Author objects themselves.
      // You might need separate logic if you want to delete orphaned authors.
      await isar.works.deleteAll(isarIds);
      // Delete orphaned authors and tags
      final orphanedAuthors =
          await isar.authors.filter().worksIsEmpty().findAll();
      final orphanedTags = await isar.tags.filter().worksIsEmpty().findAll();
      await isar.authors.deleteAll(
        orphanedAuthors.map((e) => e.isarId).toList(),
      );
      await isar.tags.deleteAll(orphanedTags.map((e) => e.isarId).toList());
    });
  }

  @override
  Future<void> deleteWork(String id) async {
    await isar.writeTxn(() async {
      // Find the internal Isar ID first
      await isar.works.filter().idEqualTo(id).deleteFirst();
      // Delete orphaned authors and tags
      final orphanedAuthors =
          await isar.authors.filter().worksIsEmpty().findAll();
      final orphanedTags = await isar.tags.filter().worksIsEmpty().findAll();
      await isar.authors.deleteAll(
        orphanedAuthors.map((e) => e.isarId).toList(),
      );
      await isar.tags.deleteAll(orphanedTags.map((e) => e.isarId).toList());
    });
  }
}
