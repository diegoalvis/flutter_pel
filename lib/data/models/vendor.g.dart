// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vendor _$VendorFromJson(Map<String, dynamic> json) {
  return Vendor(
    json['id'] as String,
    json['name'] as String,
    json['image_url'] as String,
    json['country_code'] as String,
    json['address'] as String,
    (json['children'] as List)?.map((e) => e as String)?.toList(),
    (json['latitude'] as num)?.toDouble(),
    (json['longitude'] as num)?.toDouble(),
    json['config'] == null
        ? null
        : VendorConfig.fromJson(json['config'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VendorToJson(Vendor instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image_url': instance.imageUrl,
      'country_code': instance.countryCode,
      'address': instance.address,
      'children': instance.children,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'config': instance.config?.toJson(),
    };
