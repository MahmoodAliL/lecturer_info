import 'package:drift/drift.dart';
import 'package:lecturer_info/data_source/app_database.dart' hide Lecturer;
import 'package:lecturer_info/domain/entity/lecturer.dart';

extension LecturerDataExt on LecturerData {
  Lecturer toDomain() {
    return Lecturer(
      id: id,
      fullName: fullName,
      scientificRank: scientificRank,
      majorSpecialization: majorSpecialization,
      minorSpecialization: minorSpecialization,
      workPlace: workPlace,
      phoneNumber: phoneNumber,
      email: email,
    );
  }
}

extension LecturerCompanionX on LecturerCompanion {
  static LecturerCompanion fromDomain(Lecturer lecturer) {
    return LecturerCompanion.insert(
      id: lecturer.id == -1 ? const Value.absent() : Value(lecturer.id),
      fullName: lecturer.fullName,
      scientificRank: lecturer.scientificRank,
      majorSpecialization: lecturer.majorSpecialization,
      minorSpecialization: lecturer.minorSpecialization,
      workPlace: lecturer.workPlace,
      phoneNumber: lecturer.phoneNumber,
      email: lecturer.email,
    );
  }
}
