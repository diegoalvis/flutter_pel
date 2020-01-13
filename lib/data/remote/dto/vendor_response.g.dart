// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorResponse _$VendorResponseFromJson(Map<String, dynamic> json) {
  return VendorResponse(
    (json['vendors'] as List)
        ?.map((e) =>
            e == null ? null : VendorModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..success = json['success'] as bool
    ..error = json['error'] as String
    ..data = json['data'];
}

Map<String, dynamic> _$VendorResponseToJson(VendorResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': instance.error,
      'data': instance.data,
      'vendors': instance.vendors,
    };
