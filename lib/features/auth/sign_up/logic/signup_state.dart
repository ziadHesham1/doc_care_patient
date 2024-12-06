import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:doc_care_core/core/networking/api_error_handler/api_error_model.dart';

part 'signup_state.freezed.dart';

@freezed
abstract class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = Loading;
  const factory SignupState.success(T data) = Success<T>;
  const factory SignupState.error({required ApiErrorModel error}) = Error;
}
