// File: lib/features/library/domain/repositories/library_repository.dart

import 'package:selene/domain/entities/work_entity.dart';

abstract class LibraryRepository {
  /// Fetches the library items from the data source.
  Stream<List<WorkEntity>> watchWorks();

  /// Fetches the library items from the data source with a search query.
  Stream<List<WorkEntity>> watchWorksWithQuery(String query);

  /// Fetches the library items from the data source with a filter.
  Stream<List<WorkEntity>> watchWorksWithFilter(String filter);
}
