import 'package:selene/features/library/models/library_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dartx/dartx.dart';

part 'library_model.freezed.dart';

@freezed
class LibraryModel with _$LibraryModel {
  const LibraryModel._();

  const factory LibraryModel({
    @Default([]) List<LibraryItem> libraryItems,
    String? searchQuery,
    @Default([]) List<LibraryItem> selectedItems,
    @Default(false) bool showCategoryTabs,
    @Default(false) bool showWorkCount,
    @Default(false) bool showWorkContinueButton,
    @Default(false) bool hasActiveFilters,
  }) = _LibraryModel;

  bool get isEmpty =>
      libraryItems.isEmpty && searchQuery.isNullOrEmpty && !hasActiveFilters;
  int get itemCount => libraryItems.length;

  bool get selecting => selectedItems.isNotEmpty;
  int get selectedCount => selectedItems.length;
  bool isSelected(LibraryItem item) => selectedItems.contains(item);
}
