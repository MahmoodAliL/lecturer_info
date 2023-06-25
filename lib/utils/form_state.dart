import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_state.freezed.dart';

@freezed
class FormState<T> with _$FormState {
  const factory FormState.initial() = _Initial;
  const factory FormState.loading() = _Loading;
  const factory FormState.submitSuccessful() = _SubmitSuccessful;
  const factory FormState.loadFieldsDataSuccess({required T data}) =
      _LoadFieldsDataSuccess;
  const factory FormState.error({required String msg}) = _Error;
}
