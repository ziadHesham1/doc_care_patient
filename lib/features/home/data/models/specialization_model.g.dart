// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Specializations _$SpecializationsFromJson(Map<String, dynamic> json) =>
    Specializations(
      json['message'] as String,
      json['status'] as bool,
      (json['code'] as num).toInt(),
      (json['data'] as List<dynamic>)
          .map((e) => Specialization.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationsToJson(Specializations instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'code': instance.code,
      'data': instance.specializations,
    };

Specialization _$SpecializationFromJson(Map<String, dynamic> json) =>
    Specialization(
      (json['id'] as num).toInt(),
      json['name'] as String,
      (json['doctors'] as List<dynamic>)
          .map((e) => Doctor.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationToJson(Specialization instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctors,
    };

Doctor _$DoctorFromJson(Map<String, dynamic> json) => Doctor(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      photo: json['photo'] as String,
      gender: json['gender'] as String,
      address: json['address'] as String,
      description: json['description'] as String,
      degree: json['degree'] as String,
      city: City.fromJson(json['city'] as Map<String, dynamic>),
      appointPrice: (json['appoint_price'] as num).toInt(),
      startTime: json['start_time'] as String,
      endTime: json['end_time'] as String,
    );

Map<String, dynamic> _$DoctorToJson(Doctor instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'gender': instance.gender,
      'address': instance.address,
      'description': instance.description,
      'degree': instance.degree,
      'city': instance.city,
      'appoint_price': instance.appointPrice,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      governorate:
          Governorate.fromJson(json['governorate'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'governorate': instance.governorate,
    };

Governorate _$GovernorateFromJson(Map<String, dynamic> json) => Governorate(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$GovernorateToJson(Governorate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
