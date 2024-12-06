// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:doc_care_core/core/helpers/app_regex.dart';

class PasswordValidationStatus {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;
  const PasswordValidationStatus({
    this.hasLowerCase = false,
    this.hasUpperCase = false,
    this.hasNumber = false,
    this.hasSpecialCharacter = false,
    this.hasMinLength = false,
  });
  bool notValidated() {
    return !hasLowerCase ||
        !hasUpperCase ||
        !hasNumber ||
        !hasSpecialCharacter ||
        !hasMinLength;
  }

  PasswordValidationStatus updateValidationStatus(String value) {
    return copyWith(
      hasLowerCase: AppRegex.hasLowerCase(value),
      hasUpperCase: AppRegex.hasUpperCase(value),
      hasNumber: AppRegex.hasNumber(value),
      hasSpecialCharacter: AppRegex.hasSpecialCharacter(value),
      hasMinLength: AppRegex.hasMinLength(value),
    );
  }

  PasswordValidationStatus copyWith({
    bool? hasLowerCase,
    bool? hasUpperCase,
    bool? hasNumber,
    bool? hasSpecialCharacter,
    bool? hasMinLength,
  }) {
    return PasswordValidationStatus(
      hasLowerCase: hasLowerCase ?? this.hasLowerCase,
      hasUpperCase: hasUpperCase ?? this.hasUpperCase,
      hasNumber: hasNumber ?? this.hasNumber,
      hasSpecialCharacter: hasSpecialCharacter ?? this.hasSpecialCharacter,
      hasMinLength: hasMinLength ?? this.hasMinLength,
    );
  }
}
