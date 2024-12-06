// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Specialization> specializations)
        specializationsSuccess,
    required TResult Function(ApiErrorModel error) specializationsError,
    required TResult Function(List<Doctor> doctors) doctorsSuccess,
    required TResult Function() doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Specialization> specializations)?
        specializationsSuccess,
    TResult? Function(ApiErrorModel error)? specializationsError,
    TResult? Function(List<Doctor> doctors)? doctorsSuccess,
    TResult? Function()? doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Specialization> specializations)?
        specializationsSuccess,
    TResult Function(ApiErrorModel error)? specializationsError,
    TResult Function(List<Doctor> doctors)? doctorsSuccess,
    TResult Function()? doctorsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(SpecializationsSuccess<T> value)
        specializationsSuccess,
    required TResult Function(SpecializationsError<T> value)
        specializationsError,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(SpecializationsSuccess<T> value)? specializationsSuccess,
    TResult? Function(SpecializationsError<T> value)? specializationsError,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(SpecializationsSuccess<T> value)? specializationsSuccess,
    TResult Function(SpecializationsError<T> value)? specializationsError,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Specialization> specializations)
        specializationsSuccess,
    required TResult Function(ApiErrorModel error) specializationsError,
    required TResult Function(List<Doctor> doctors) doctorsSuccess,
    required TResult Function() doctorsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Specialization> specializations)?
        specializationsSuccess,
    TResult? Function(ApiErrorModel error)? specializationsError,
    TResult? Function(List<Doctor> doctors)? doctorsSuccess,
    TResult? Function()? doctorsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Specialization> specializations)?
        specializationsSuccess,
    TResult Function(ApiErrorModel error)? specializationsError,
    TResult Function(List<Doctor> doctors)? doctorsSuccess,
    TResult Function()? doctorsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(SpecializationsSuccess<T> value)
        specializationsSuccess,
    required TResult Function(SpecializationsError<T> value)
        specializationsError,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(SpecializationsSuccess<T> value)? specializationsSuccess,
    TResult? Function(SpecializationsError<T> value)? specializationsError,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(SpecializationsSuccess<T> value)? specializationsSuccess,
    TResult Function(SpecializationsError<T> value)? specializationsError,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements HomeState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'HomeState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Specialization> specializations)
        specializationsSuccess,
    required TResult Function(ApiErrorModel error) specializationsError,
    required TResult Function(List<Doctor> doctors) doctorsSuccess,
    required TResult Function() doctorsError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Specialization> specializations)?
        specializationsSuccess,
    TResult? Function(ApiErrorModel error)? specializationsError,
    TResult? Function(List<Doctor> doctors)? doctorsSuccess,
    TResult? Function()? doctorsError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Specialization> specializations)?
        specializationsSuccess,
    TResult Function(ApiErrorModel error)? specializationsError,
    TResult Function(List<Doctor> doctors)? doctorsSuccess,
    TResult Function()? doctorsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(SpecializationsSuccess<T> value)
        specializationsSuccess,
    required TResult Function(SpecializationsError<T> value)
        specializationsError,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(SpecializationsSuccess<T> value)? specializationsSuccess,
    TResult? Function(SpecializationsError<T> value)? specializationsError,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(SpecializationsSuccess<T> value)? specializationsSuccess,
    TResult Function(SpecializationsError<T> value)? specializationsError,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements HomeState<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$SpecializationsSuccessImplCopyWith<T, $Res> {
  factory _$$SpecializationsSuccessImplCopyWith(
          _$SpecializationsSuccessImpl<T> value,
          $Res Function(_$SpecializationsSuccessImpl<T>) then) =
      __$$SpecializationsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<Specialization> specializations});
}

/// @nodoc
class __$$SpecializationsSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SpecializationsSuccessImpl<T>>
    implements _$$SpecializationsSuccessImplCopyWith<T, $Res> {
  __$$SpecializationsSuccessImplCopyWithImpl(
      _$SpecializationsSuccessImpl<T> _value,
      $Res Function(_$SpecializationsSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? specializations = null,
  }) {
    return _then(_$SpecializationsSuccessImpl<T>(
      null == specializations
          ? _value._specializations
          : specializations // ignore: cast_nullable_to_non_nullable
              as List<Specialization>,
    ));
  }
}

/// @nodoc

class _$SpecializationsSuccessImpl<T> implements SpecializationsSuccess<T> {
  const _$SpecializationsSuccessImpl(final List<Specialization> specializations)
      : _specializations = specializations;

  final List<Specialization> _specializations;
  @override
  List<Specialization> get specializations {
    if (_specializations is EqualUnmodifiableListView) return _specializations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_specializations);
  }

  @override
  String toString() {
    return 'HomeState<$T>.specializationsSuccess(specializations: $specializations)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationsSuccessImpl<T> &&
            const DeepCollectionEquality()
                .equals(other._specializations, _specializations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_specializations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationsSuccessImplCopyWith<T, _$SpecializationsSuccessImpl<T>>
      get copyWith => __$$SpecializationsSuccessImplCopyWithImpl<T,
          _$SpecializationsSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Specialization> specializations)
        specializationsSuccess,
    required TResult Function(ApiErrorModel error) specializationsError,
    required TResult Function(List<Doctor> doctors) doctorsSuccess,
    required TResult Function() doctorsError,
  }) {
    return specializationsSuccess(specializations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Specialization> specializations)?
        specializationsSuccess,
    TResult? Function(ApiErrorModel error)? specializationsError,
    TResult? Function(List<Doctor> doctors)? doctorsSuccess,
    TResult? Function()? doctorsError,
  }) {
    return specializationsSuccess?.call(specializations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Specialization> specializations)?
        specializationsSuccess,
    TResult Function(ApiErrorModel error)? specializationsError,
    TResult Function(List<Doctor> doctors)? doctorsSuccess,
    TResult Function()? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationsSuccess != null) {
      return specializationsSuccess(specializations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(SpecializationsSuccess<T> value)
        specializationsSuccess,
    required TResult Function(SpecializationsError<T> value)
        specializationsError,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) {
    return specializationsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(SpecializationsSuccess<T> value)? specializationsSuccess,
    TResult? Function(SpecializationsError<T> value)? specializationsError,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) {
    return specializationsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(SpecializationsSuccess<T> value)? specializationsSuccess,
    TResult Function(SpecializationsError<T> value)? specializationsError,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationsSuccess != null) {
      return specializationsSuccess(this);
    }
    return orElse();
  }
}

abstract class SpecializationsSuccess<T> implements HomeState<T> {
  const factory SpecializationsSuccess(
          final List<Specialization> specializations) =
      _$SpecializationsSuccessImpl<T>;

  List<Specialization> get specializations;
  @JsonKey(ignore: true)
  _$$SpecializationsSuccessImplCopyWith<T, _$SpecializationsSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SpecializationsErrorImplCopyWith<T, $Res> {
  factory _$$SpecializationsErrorImplCopyWith(
          _$SpecializationsErrorImpl<T> value,
          $Res Function(_$SpecializationsErrorImpl<T>) then) =
      __$$SpecializationsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel error});
}

/// @nodoc
class __$$SpecializationsErrorImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$SpecializationsErrorImpl<T>>
    implements _$$SpecializationsErrorImplCopyWith<T, $Res> {
  __$$SpecializationsErrorImplCopyWithImpl(_$SpecializationsErrorImpl<T> _value,
      $Res Function(_$SpecializationsErrorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SpecializationsErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$SpecializationsErrorImpl<T> implements SpecializationsError<T> {
  const _$SpecializationsErrorImpl({required this.error});

  @override
  final ApiErrorModel error;

  @override
  String toString() {
    return 'HomeState<$T>.specializationsError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpecializationsErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SpecializationsErrorImplCopyWith<T, _$SpecializationsErrorImpl<T>>
      get copyWith => __$$SpecializationsErrorImplCopyWithImpl<T,
          _$SpecializationsErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Specialization> specializations)
        specializationsSuccess,
    required TResult Function(ApiErrorModel error) specializationsError,
    required TResult Function(List<Doctor> doctors) doctorsSuccess,
    required TResult Function() doctorsError,
  }) {
    return specializationsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Specialization> specializations)?
        specializationsSuccess,
    TResult? Function(ApiErrorModel error)? specializationsError,
    TResult? Function(List<Doctor> doctors)? doctorsSuccess,
    TResult? Function()? doctorsError,
  }) {
    return specializationsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Specialization> specializations)?
        specializationsSuccess,
    TResult Function(ApiErrorModel error)? specializationsError,
    TResult Function(List<Doctor> doctors)? doctorsSuccess,
    TResult Function()? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationsError != null) {
      return specializationsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(SpecializationsSuccess<T> value)
        specializationsSuccess,
    required TResult Function(SpecializationsError<T> value)
        specializationsError,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) {
    return specializationsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(SpecializationsSuccess<T> value)? specializationsSuccess,
    TResult? Function(SpecializationsError<T> value)? specializationsError,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) {
    return specializationsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(SpecializationsSuccess<T> value)? specializationsSuccess,
    TResult Function(SpecializationsError<T> value)? specializationsError,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) {
    if (specializationsError != null) {
      return specializationsError(this);
    }
    return orElse();
  }
}

abstract class SpecializationsError<T> implements HomeState<T> {
  const factory SpecializationsError({required final ApiErrorModel error}) =
      _$SpecializationsErrorImpl<T>;

  ApiErrorModel get error;
  @JsonKey(ignore: true)
  _$$SpecializationsErrorImplCopyWith<T, _$SpecializationsErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoctorsSuccessImplCopyWith<T, $Res> {
  factory _$$DoctorsSuccessImplCopyWith(_$DoctorsSuccessImpl<T> value,
          $Res Function(_$DoctorsSuccessImpl<T>) then) =
      __$$DoctorsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<Doctor> doctors});
}

/// @nodoc
class __$$DoctorsSuccessImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$DoctorsSuccessImpl<T>>
    implements _$$DoctorsSuccessImplCopyWith<T, $Res> {
  __$$DoctorsSuccessImplCopyWithImpl(_$DoctorsSuccessImpl<T> _value,
      $Res Function(_$DoctorsSuccessImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctors = null,
  }) {
    return _then(_$DoctorsSuccessImpl<T>(
      null == doctors
          ? _value._doctors
          : doctors // ignore: cast_nullable_to_non_nullable
              as List<Doctor>,
    ));
  }
}

/// @nodoc

class _$DoctorsSuccessImpl<T> implements DoctorsSuccess<T> {
  const _$DoctorsSuccessImpl(final List<Doctor> doctors) : _doctors = doctors;

  final List<Doctor> _doctors;
  @override
  List<Doctor> get doctors {
    if (_doctors is EqualUnmodifiableListView) return _doctors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doctors);
  }

  @override
  String toString() {
    return 'HomeState<$T>.doctorsSuccess(doctors: $doctors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoctorsSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._doctors, _doctors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_doctors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoctorsSuccessImplCopyWith<T, _$DoctorsSuccessImpl<T>> get copyWith =>
      __$$DoctorsSuccessImplCopyWithImpl<T, _$DoctorsSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Specialization> specializations)
        specializationsSuccess,
    required TResult Function(ApiErrorModel error) specializationsError,
    required TResult Function(List<Doctor> doctors) doctorsSuccess,
    required TResult Function() doctorsError,
  }) {
    return doctorsSuccess(doctors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Specialization> specializations)?
        specializationsSuccess,
    TResult? Function(ApiErrorModel error)? specializationsError,
    TResult? Function(List<Doctor> doctors)? doctorsSuccess,
    TResult? Function()? doctorsError,
  }) {
    return doctorsSuccess?.call(doctors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Specialization> specializations)?
        specializationsSuccess,
    TResult Function(ApiErrorModel error)? specializationsError,
    TResult Function(List<Doctor> doctors)? doctorsSuccess,
    TResult Function()? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsSuccess != null) {
      return doctorsSuccess(doctors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(SpecializationsSuccess<T> value)
        specializationsSuccess,
    required TResult Function(SpecializationsError<T> value)
        specializationsError,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) {
    return doctorsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(SpecializationsSuccess<T> value)? specializationsSuccess,
    TResult? Function(SpecializationsError<T> value)? specializationsError,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) {
    return doctorsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(SpecializationsSuccess<T> value)? specializationsSuccess,
    TResult Function(SpecializationsError<T> value)? specializationsError,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsSuccess != null) {
      return doctorsSuccess(this);
    }
    return orElse();
  }
}

abstract class DoctorsSuccess<T> implements HomeState<T> {
  const factory DoctorsSuccess(final List<Doctor> doctors) =
      _$DoctorsSuccessImpl<T>;

  List<Doctor> get doctors;
  @JsonKey(ignore: true)
  _$$DoctorsSuccessImplCopyWith<T, _$DoctorsSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoctorsErrorImplCopyWith<T, $Res> {
  factory _$$DoctorsErrorImplCopyWith(_$DoctorsErrorImpl<T> value,
          $Res Function(_$DoctorsErrorImpl<T>) then) =
      __$$DoctorsErrorImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$DoctorsErrorImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$DoctorsErrorImpl<T>>
    implements _$$DoctorsErrorImplCopyWith<T, $Res> {
  __$$DoctorsErrorImplCopyWithImpl(
      _$DoctorsErrorImpl<T> _value, $Res Function(_$DoctorsErrorImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DoctorsErrorImpl<T> implements DoctorsError<T> {
  const _$DoctorsErrorImpl();

  @override
  String toString() {
    return 'HomeState<$T>.doctorsError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoctorsErrorImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Specialization> specializations)
        specializationsSuccess,
    required TResult Function(ApiErrorModel error) specializationsError,
    required TResult Function(List<Doctor> doctors) doctorsSuccess,
    required TResult Function() doctorsError,
  }) {
    return doctorsError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Specialization> specializations)?
        specializationsSuccess,
    TResult? Function(ApiErrorModel error)? specializationsError,
    TResult? Function(List<Doctor> doctors)? doctorsSuccess,
    TResult? Function()? doctorsError,
  }) {
    return doctorsError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Specialization> specializations)?
        specializationsSuccess,
    TResult Function(ApiErrorModel error)? specializationsError,
    TResult Function(List<Doctor> doctors)? doctorsSuccess,
    TResult Function()? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsError != null) {
      return doctorsError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(SpecializationsSuccess<T> value)
        specializationsSuccess,
    required TResult Function(SpecializationsError<T> value)
        specializationsError,
    required TResult Function(DoctorsSuccess<T> value) doctorsSuccess,
    required TResult Function(DoctorsError<T> value) doctorsError,
  }) {
    return doctorsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(SpecializationsSuccess<T> value)? specializationsSuccess,
    TResult? Function(SpecializationsError<T> value)? specializationsError,
    TResult? Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult? Function(DoctorsError<T> value)? doctorsError,
  }) {
    return doctorsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(SpecializationsSuccess<T> value)? specializationsSuccess,
    TResult Function(SpecializationsError<T> value)? specializationsError,
    TResult Function(DoctorsSuccess<T> value)? doctorsSuccess,
    TResult Function(DoctorsError<T> value)? doctorsError,
    required TResult orElse(),
  }) {
    if (doctorsError != null) {
      return doctorsError(this);
    }
    return orElse();
  }
}

abstract class DoctorsError<T> implements HomeState<T> {
  const factory DoctorsError() = _$DoctorsErrorImpl<T>;
}
