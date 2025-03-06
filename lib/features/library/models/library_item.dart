import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selene/features/story/models/story.dart';
import 'package:selene/utils/string.dart';

part 'library_item.freezed.dart';

@freezed
class LibraryItem with _$LibraryItem {
  const LibraryItem._();
  const factory LibraryItem({required int id, required Story story}) =
      _LibraryItem;

  bool matches(String constraint) {
    return story.title?.containsIgnoreCase(constraint) ?? false;
  }
}
