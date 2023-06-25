import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lecturer_info/application/id_provider.dart';
import 'package:lecturer_info/application/lecturer_form_state.dart';
import 'package:lecturer_info/data/respository.dart';
import 'package:lecturer_info/domain/entity/lecturer.dart';
import 'package:lecturer_info/utils/failure.dart';
import 'package:lecturer_info/utils/form_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lecturer_form_controller.g.dart';

@riverpod
class LecturerFormController extends _$LecturerFormController {
  @override
  LecturerFormState build() {
    final id = ref.watch(lecturerIdProvider);
    _checkIsEdting(id);
    return LecturerFormState(lecturer:  Lecturer.empty());
  }

  void _checkIsEdting(int id) {
    if (id == -1) return;

    ref.read(lecturerRepositoryProvider).getLecturer(id: id).fold(
      _onFailure,
      (lecturerFuture) async {
        final lecturer = await lecturerFuture;
        state = state.copyWith(
          isEdting: true,
          lecturer: lecturer,
          formState: FormState.loadFieldsDataSuccess(data: lecturer),
        );
      },
    );
  }

  void _onFailure(Failure f) {
    f.map(unexpected: (_) {
      state = state.copyWith(
        formState: const FormState.error(msg: 'Unexpected error'),
      );
    });
  }

  void onFullNameChanged(String value) {
    final lecturer = state.lecturer.copyWith(fullName: value);
    state = state.copyWith(lecturer: lecturer);
  }

  void onScientificRankChanged(String value) {
     final lecturer = state.lecturer.copyWith(scientificRank: value);
    state = state.copyWith(lecturer: lecturer);
  }

  void onMajorSpecializationChanged(String value) {
    final lecturer = state.lecturer.copyWith(majorSpecialization: value);
    state = state.copyWith(lecturer: lecturer);
  }

  void onMinorSpecializationChanged(String value) {
   final lecturer = state.lecturer.copyWith(minorSpecialization: value);
    state = state.copyWith(lecturer: lecturer);
  }

  void onEmailChanged(String value) {
   final lecturer = state.lecturer.copyWith(email: value);
    state = state.copyWith(lecturer: lecturer);
  }

  void onPhoneNumberChanged(String value) {
     final lecturer = state.lecturer.copyWith(phoneNumber: value);
    state = state.copyWith(lecturer: lecturer);
  }

  void onWorkPlaceChanged(String value) {
    final lecturer = state.lecturer.copyWith(workPlace: value);
    state = state.copyWith(lecturer: lecturer);
  }

  void save() {
    state = state.copyWith(formState: const FormState.loading());

    final result = state.isEdting
        ? ref.read(lecturerRepositoryProvider).update(lecturer: state.lecturer)
        : ref.read(lecturerRepositoryProvider).insert(lecturer:  state.lecturer);

    result.fold(_onFailure, (futureId) async {
      
      state = state.copyWith(formState: const FormState.submitSuccessful());
    });
  }
}
