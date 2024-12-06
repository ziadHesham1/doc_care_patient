// part of 'login_cubit.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:doc_care_core/core/networking/api_error_handler/api_error_model.dart';

part 'login_state.freezed.dart';

@freezed
abstract class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success(T data) = Success<T>;
  const factory LoginState.error({required ApiErrorModel error}) = Error;
}
