// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile(
    json['shopper_id'] as String,
    json['first_name'] as String,
    json['last_name'] as String,
    json['email'] as String,
    json['contract_type'] as String,
    json['rooster_u_r_l'] as String,
    json['profile_image_url'] as String,
    json['managed_with_rooster'] as bool,
    json['config'] == null
        ? null
        : PickerConfig.fromJson(json['config'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'shopper_id': instance.shopperId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'contract_type': instance.contractType,
      'rooster_u_r_l': instance.roosterURL,
      'profile_image_url': instance.profileImageUrl,
      'managed_with_rooster': instance.managedWithRooster,
      'config': instance.config?.toJson(),
    };
