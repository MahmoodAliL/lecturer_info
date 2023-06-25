import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lecturer_info/domain/entity/lecturer.dart';
import 'package:lecturer_info/utils/form_state.dart';

part 'lecturer_form_state.freezed.dart';

@freezed
class LecturerFormState with _$LecturerFormState {
  factory LecturerFormState({
    @Default(FormState.initial()) FormState<Lecturer> formState,
    @Default(false) bool isEdting,
    required Lecturer lecturer ,
  }) = _LecturerFormState;
}
