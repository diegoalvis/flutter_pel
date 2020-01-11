// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorConfig _$VendorConfigFromJson(Map<String, dynamic> json) {
  return VendorConfig(
    json['chatEnabled'] as bool,
    json['maxOrdersInProgress'] as int,
  );
}

Map<String, dynamic> _$VendorConfigToJson(VendorConfig instance) =>
    <String, dynamic>{
      'chatEnabled': instance.chatEnabled,
      'maxOrdersInProgress': instance.maxOrdersInProgress,
    };
