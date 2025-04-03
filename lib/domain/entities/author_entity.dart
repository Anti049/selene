import 'package:change_case/change_case.dart';
import 'package:selene/domain/entities/work_entity.dart';

class AuthorEntity {
  final String id;
  final String name;
  final String? url;
  final List<WorkEntity> works;

  AuthorEntity({required this.name, this.url, this.works = const []})
    : id = name.toKebabCase().replaceAll(RegExp(r'[^a-zA-Z0-9-]'), '');
}
