import 'package:drift/drift.dart';
import 'package:lecturer_info/data/dto.dart';
import 'package:lecturer_info/data_source/app_database.dart' hide Lecturer;
import 'package:lecturer_info/domain/entity/lecturer.dart';
import 'package:test/test.dart';

void main() {
  final lecturerCompanion = LecturerCompanion.insert(
      id: const Value(1),
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

  const lecturer = Lecturer(
      id: 1,
      fullName: 'fullName',
      scientificRank: 'scientificRank',
      majorSpecialization: 'majorSpecialization',
      minorSpecialization: 'minorSpecialization',
      workPlace: 'workPlace',
      phoneNumber: 'phoneNumber',
      email: 'email');

  test('LecturerDate to entity Lecturer', () {
    final result = lecturerData.toDomain();

    expect(result, lecturer);
  });


 test('Lecturer to LecturerCompanion ', () {
    final result = LecturerCompanionX.fromDomain(lecturer);

    expect(result, lecturerCompanion);
  });
  
}
