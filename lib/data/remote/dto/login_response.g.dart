// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return LoginResponse(
    json['access_token'] as String,
    json['password_change_required'] as bool,
    json['profile'] == null
        ? null
        : Profile.fromJson(json['profile'] as Map<String, dynamic>),
    (json['vendors'] as List)
        ?.map((e) =>
            e == null ? null : Vendor.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'password_change_required': instance.passwordChangeRequired,
      'profile': instance.profile?.toJson(),
      'vendors': instance.vendors?.map((e) => e?.toJson())?.toList(),
    };
