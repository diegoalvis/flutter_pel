// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return LoginResponse(
    json['accessToken'] as String,
    json['passwordChangeRequired'] as bool,
    json['profile'] == null
        ? null
        : Profile.fromJson(json['profile'] as Map<String, dynamic>),
    (json['vendors'] as List)
        ?.map((e) =>
            e == null ? null : Vendor.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..success = json['success'] as bool
    ..error = json['error'] as String
    ..data = json['data'];
}

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': instance.error,
      'data': instance.data,
      'accessToken': instance.accessToken,
      'passwordChangeRequired': instance.passwordChangeRequired,
      'profile': instance.profile,
      'vendors': instance.vendors,
    };
