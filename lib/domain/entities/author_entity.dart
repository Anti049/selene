import 'package:selene/domain/entities/work_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_entity.freezed.dart';

@freezed
class AuthorEntity with _$AuthorEntity {
  const AuthorEntity._();

  const factory AuthorEntity({
    required String id,
    required String name,
    String? url,
    @Default([]) List<WorkEntity> works,
  }) = _AuthorEntity;
}
