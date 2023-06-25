import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as path;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_database.g.dart';

@DriftDatabase(include: {'tables.drift'})
class AppDatabase extends _$AppDatabase {
  AppDatabase({bool isTesting = false})
      : super(_openConnection(isTesting: isTesting));

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection({bool isTesting = false}) {
  return LazyDatabase(() async {
    if (isTesting) return NativeDatabase.memory();

    final dbFolder = path.dirname( Platform.resolvedExecutable);
    final db = File(path.join(dbFolder, 'database.sqlite'));

    return NativeDatabase(db, logStatements: true);
  });
}

@Riverpod(keepAlive: true)
AppDatabase appDatabaseProvider(AppDatabaseProviderRef ref) {
  return AppDatabase();
}
