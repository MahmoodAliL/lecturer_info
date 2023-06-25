import 'package:lecturer_info/domain/entity/lecturer.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lecturer_provider.g.dart';


@riverpod
Lecturer lecturerItem(LecturerItemRef ref) {
  return Lecturer.empty();
}
