// lib/core/providers/data_providers.dart (or similar)
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:selene/data/models/author.dart';
import 'package:selene/data/models/tag.dart';
import 'package:selene/data/models/work.dart';
import 'package:selene/data/repositories/author_repository_impl.dart';
import 'package:selene/data/repositories/tag_repository_impl.dart';

// Data Layer Imports
import 'package:selene/data/repositories/work_repository_impl.dart'; // Your implementation path
import 'package:selene/domain/repositories/i_author_repository.dart';
import 'package:selene/domain/repositories/i_tag_repository.dart';
// Domain Layer Imports
import 'package:selene/domain/repositories/i_work_repository.dart'; // Your interface path
import 'package:selene/features/settings/screens/appearance/themes/models/theme.dart';

// Assuming 'isarInstance' is the globally accessible Isar instance from main.dart
// A more robust approach might involve initializing Isar within a provider.
import 'package:selene/main.dart'; // Import to access isarInstance

part 'data_providers.g.dart'; // Or adjust file name

// Provider for the Isar instance
@riverpod
Isar isar(Ref ref) {
  // Return the already initialized Isar instance
  // If Isar initialization is async, use a FutureProvider instead
  return isarInstance;
}

// Provider for the Work Repository Implementation
@riverpod
IWorkRepository workRepository(Ref ref) {
  // Get the Isar instance from its provider
  final isar = ref.watch(isarProvider);
  // Create and return the repository implementation
  return WorkRepositoryImpl(isar);
}

@riverpod
IAuthorRepository authorRepository(Ref ref) {
  // Get the Isar instance from its provider
  final isar = ref.watch(isarProvider);
  // Create and return the repository implementation
  return AuthorRepositoryImpl(isar);
}

@riverpod
ITagRepository tagRepository(Ref ref) {
  // Get the Isar instance from its provider
  final isar = ref.watch(isarProvider);
  // Create and return the repository implementation
  return TagRepositoryImpl(isar);
}
