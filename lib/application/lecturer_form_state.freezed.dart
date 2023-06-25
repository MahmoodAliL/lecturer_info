// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lecturer_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LecturerFormState {
  FormState<Lecturer> get formState => throw _privateConstructorUsedError;
  bool get isEdting => throw _privateConstructorUsedError;
  Lecturer get lecturer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LecturerFormStateCopyWith<LecturerFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LecturerFormStateCopyWith<$Res> {
  factory $LecturerFormStateCopyWith(
          LecturerFormState value, $Res Function(LecturerFormState) then) =
      _$LecturerFormStateCopyWithImpl<$Res, LecturerFormState>;
  @useResult
  $Res call({FormState<Lecturer> formState, bool isEdting, Lecturer lecturer});

  $FormStateCopyWith<Lecturer, $Res> get formState;
  $LecturerCopyWith<$Res> get lecturer;
}

/// @nodoc
class _$LecturerFormStateCopyWithImpl<$Res, $Val extends LecturerFormState>
    implements $LecturerFormStateCopyWith<$Res> {
  _$LecturerFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formState = null,
    Object? isEdting = null,
    Object? lecturer = null,
  }) {
    return _then(_value.copyWith(
      formState: null == formState
          ? _value.formState
          : formState // ignore: cast_nullable_to_non_nullable
              as FormState<Lecturer>,
      isEdting: null == isEdting
          ? _value.isEdting
          : isEdting // ignore: cast_nullable_to_non_nullable
              as bool,
      lecturer: null == lecturer
          ? _value.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as Lecturer,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FormStateCopyWith<Lecturer, $Res> get formState {
    return $FormStateCopyWith<Lecturer, $Res>(_value.formState, (value) {
      return _then(_value.copyWith(formState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LecturerCopyWith<$Res> get lecturer {
    return $LecturerCopyWith<$Res>(_value.lecturer, (value) {
      return _then(_value.copyWith(lecturer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LecturerFormStateCopyWith<$Res>
    implements $LecturerFormStateCopyWith<$Res> {
  factory _$$_LecturerFormStateCopyWith(_$_LecturerFormState value,
          $Res Function(_$_LecturerFormState) then) =
      __$$_LecturerFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormState<Lecturer> formState, bool isEdting, Lecturer lecturer});

  @override
  $FormStateCopyWith<Lecturer, $Res> get formState;
  @override
  $LecturerCopyWith<$Res> get lecturer;
}

/// @nodoc
class __$$_LecturerFormStateCopyWithImpl<$Res>
    extends _$LecturerFormStateCopyWithImpl<$Res, _$_LecturerFormState>
    implements _$$_LecturerFormStateCopyWith<$Res> {
  __$$_LecturerFormStateCopyWithImpl(
      _$_LecturerFormState _value, $Res Function(_$_LecturerFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formState = null,
    Object? isEdting = null,
    Object? lecturer = null,
  }) {
    return _then(_$_LecturerFormState(
      formState: null == formState
          ? _value.formState
          : formState // ignore: cast_nullable_to_non_nullable
              as FormState<Lecturer>,
      isEdting: null == isEdting
          ? _value.isEdting
          : isEdting // ignore: cast_nullable_to_non_nullable
              as bool,
      lecturer: null == lecturer
          ? _value.lecturer
          : lecturer // ignore: cast_nullable_to_non_nullable
              as Lecturer,
    ));
  }
}

/// @nodoc

class _$_LecturerFormState implements _LecturerFormState {
  _$_LecturerFormState(
      {this.formState = const FormState.initial(),
      this.isEdting = false,
      required this.lecturer});

  @override
  @JsonKey()
  final FormState<Lecturer> formState;
  @override
  @JsonKey()
  final bool isEdting;
  @override
  final Lecturer lecturer;

  @override
  String toString() {
    return 'LecturerFormState(formState: $formState, isEdting: $isEdting, lecturer: $lecturer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LecturerFormState &&
            (identical(other.formState, formState) ||
                other.formState == formState) &&
            (identical(other.isEdting, isEdting) ||
                other.isEdting == isEdting) &&
            (identical(other.lecturer, lecturer) ||
                other.lecturer == lecturer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formState, isEdting, lecturer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LecturerFormStateCopyWith<_$_LecturerFormState> get copyWith =>
      __$$_LecturerFormStateCopyWithImpl<_$_LecturerFormState>(
          this, _$identity);
}

abstract class _LecturerFormState implements LecturerFormState {
  factory _LecturerFormState(
      {final FormState<Lecturer> formState,
      final bool isEdting,
      required final Lecturer lecturer}) = _$_LecturerFormState;

  @override
  FormState<Lecturer> get formState;
  @override
  bool get isEdting;
  @override
  Lecturer get lecturer;
  @override
  @JsonKey(ignore: true)
  _$$_LecturerFormStateCopyWith<_$_LecturerFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
