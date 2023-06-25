import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'lecturer.freezed.dart';

@freezed
class Lecturer with _$Lecturer {
  const factory Lecturer({
    required int id,
    required String fullName,
    required String scientificRank,
    required String majorSpecialization,
    required String minorSpecialization,
    required String workPlace,
    required String phoneNumber,
    required String email,
  }) = _Lecturer;

  factory Lecturer.empty() => const Lecturer(
      id: -1,
      fullName: '',
      scientificRank: '',
      majorSpecialization: '',
      minorSpecialization: '',
      workPlace: '',
      phoneNumber: '',
      email: '');
}
