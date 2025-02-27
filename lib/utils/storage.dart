import 'dart:io';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class StorageProvider {
  Future<Isar> initDB(String? path, {bool? inspector = false}) async {
    Directory? dir;
    if (path == null) {
      dir = await getDatabaseDirectory();
    } else {
      dir = Directory(path);
    }

    final isarInstance = Isar.openSync(
      [],
      directory: dir!.path,
      name: 'seleneDB',
      inspector: inspector!,
    );

    // Return the Isar instance
    return isarInstance;
  }

  Future<Directory?> getDatabaseDirectory() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Platform.isAndroid || Platform.isIOS || Platform.isMacOS) {
      return dir;
    } else {
      String dbDir = path.join(dir.path, 'Selene', 'databases');
      await Directory(dbDir).create(recursive: true);
      return Directory(dbDir);
    }
  }
}
