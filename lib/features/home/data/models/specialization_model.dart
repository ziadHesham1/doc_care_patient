import 'package:json_annotation/json_annotation.dart';
part 'specialization_model.g.dart';

@JsonSerializable()
class Specializations {
  final String message;
  final bool status;
  final int code;
  @JsonKey(name: 'data')
  final List<Specialization> specializations;

  Specializations(this.message, this.status, this.code, this.specializations);

  factory Specializations.fromJson(Map<String, dynamic> json) =>
      _$SpecializationsFromJson(json);
}

@JsonSerializable()
class Specialization {
  final int id;
  final String name;
  final List<Doctor> doctors;

  Specialization(this.id, this.name, this.doctors);

  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}

@JsonSerializable()
class Doctor {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String photo;
  final String gender;
  final String address;
  final String description;
  final String degree;
  // final Specialization specialization;
  final City city;
  @JsonKey(name: 'appoint_price')
  final int appointPrice;
  @JsonKey(name: 'start_time')
  final String startTime;
  @JsonKey(name: 'end_time')
  final String endTime;
  Doctor({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.photo,
    required this.gender,
    required this.address,
    required this.description,
    required this.degree,
    required this.city,
    required this.appointPrice,
    required this.startTime,
    required this.endTime,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);
}

@JsonSerializable()
class City {
  final int id;
  final String name;
  final Governorate governorate;
  City({
    required this.id,
    required this.name,
    required this.governorate,
  });

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}

@JsonSerializable()
class Governorate {
  final int id;
  final String name;
  Governorate({
    required this.id,
    required this.name,
  });

  factory Governorate.fromJson(Map<String, dynamic> json) =>
      _$GovernorateFromJson(json);
}
