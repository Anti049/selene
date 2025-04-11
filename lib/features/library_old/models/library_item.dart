import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:selene/domain/entities/work_entity.dart';
import 'package:selene/utils/string.dart';

part 'library_item.freezed.dart';

@freezed
class LibraryItem with _$LibraryItem {
  const LibraryItem._();
  const factory LibraryItem({required int id, required WorkEntity work}) =
      _LibraryItem;

  bool matches(String constraint) {
    return work.title.containsIgnoreCase(constraint);
  }
}
