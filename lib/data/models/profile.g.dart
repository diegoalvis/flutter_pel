// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile(
    json['shopperId'] as String,
    json['firstName'] as String,
    json['lastName'] as String,
    json['email'] as String,
    json['contractType'] as String,
    json['roosterURL'] as String,
    json['profileImageUrl'] as String,
    json['managedWithRooster'] as bool,
    json['config'] == null
        ? null
        : PickerConfig.fromJson(json['config'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'shopperId': instance.shopperId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'contractType': instance.contractType,
      'roosterURL': instance.roosterURL,
      'profileImageUrl': instance.profileImageUrl,
      'managedWithRooster': instance.managedWithRooster,
      'config': instance.config?.toJson(),
    };
