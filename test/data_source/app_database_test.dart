import 'package:drift/drift.dart';
import 'package:lecturer_info/data_source/app_database.dart';
import 'package:test/test.dart';

void main() {
  late AppDatabase db;

  setUp(() {
    db = AppDatabase(isTesting: true);
  });

  tearDown(() async {
    await db.close();
  });

  final lecturer = LecturerCompanion.insert(
      fullName: 'fullName',
      scientificRank: 'scientificRank',
      majorSpecialization: 'majorSpecialization',
      minorSpecialization: 'minorSpecialization',
      workPlace: 'workPlace',
      phoneNumber: 'phoneNumber',
      email: 'email');

  const lecturerData = LecturerData(
      id: 1,
      fullName: 'fullName',
      scientificRank: 'scientificRank',
      majorSpecialization: 'majorSpecialization',
      minorSpecialization: 'minorSpecialization',
      workPlace: 'workPlace',
      phoneNumber: 'phoneNumber',
      email: 'email');

  test('insert lecutuer', () async {
    final id = await db.into(db.lecturer).insert(
          LecturerCompanion.insert(
              fullName: 'fullName',
              scientificRank: 'scientificRank',
              majorSpecialization: 'majorSpecialization',
              minorSpecialization: 'minorSpecialization',
              workPlace: 'workPlace',
              phoneNumber: 'phoneNumber',
              email: 'email'),
        );

    expect(id, 1);
  });

  test('get lecturer', () async {
    final id = await db.into(db.lecturer).insert(lecturer);
    final result = await db.getlecturer(id).getSingle();
    expect(result, lecturerData);
  });

  test('update lecuturer', () async {
    final id = await db.into(db.lecturer).insert(lecturer);

    final updatedLecturer = lecturer.copyWith(
      id: const Value(1),
      fullName: const Value('edited'),
    );

    await db.into(db.lecturer).insertOnConflictUpdate(updatedLecturer);

    final result = await db.getlecturer(id).getSingle();
    expect(result, lecturerData.copyWith(fullName: 'edited'));
  });
}
