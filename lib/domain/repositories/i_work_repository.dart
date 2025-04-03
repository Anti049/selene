import 'package:selene/domain/entities/work_entity.dart';

abstract interface class IWorkRepository {
  Future<List<WorkEntity>> getWorks();
  Future<void> deleteWorks(List<String> ids);
  Future<WorkEntity?> getWorkFromID(String id);
  Future<void> saveWork(WorkEntity work);
  Future<void> deleteWork(String id);
}
