import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:doc_care_core/core/networking/api_error_handler/api_error_model.dart';
import '../data/models/specialization_model.dart';

part 'home_state.freezed.dart';

@freezed
abstract class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.loading() = Loading;
  // specializations

  const factory HomeState.specializationsSuccess(
      List<Specialization> specializations) = SpecializationsSuccess;

  const factory HomeState.specializationsError({required ApiErrorModel error}) =
      SpecializationsError;

  const factory HomeState.doctorsSuccess(List<Doctor> doctors) = DoctorsSuccess;

  const factory HomeState.doctorsError() = DoctorsError;
}
