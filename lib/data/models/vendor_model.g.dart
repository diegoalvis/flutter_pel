// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorModel _$VendorModelFromJson(Map<String, dynamic> json) {
  return VendorModel(
    json['id'] as String,
    json['name'] as String,
    json['imageUrl'] as String,
    json['countryCode'] as String,
    json['address'] as String,
    (json['children'] as List)?.map((e) => e as String)?.toList(),
    (json['latitude'] as num)?.toDouble(),
    (json['longitude'] as num)?.toDouble(),
    json['config'] == null
        ? null
        : VendorConfig.fromJson(json['config'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$VendorModelToJson(VendorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'countryCode': instance.countryCode,
      'address': instance.address,
      'children': instance.children,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'config': instance.config?.toJson(),
    };
