// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VendorConfig _$VendorConfigFromJson(Map<String, dynamic> json) {
  return VendorConfig(
    json['chat_enabled'] as bool,
    json['max_orders_in_progress'] as int,
  );
}

Map<String, dynamic> _$VendorConfigToJson(VendorConfig instance) =>
    <String, dynamic>{
      'chat_enabled': instance.chatEnabled,
      'max_orders_in_progress': instance.maxOrdersInProgress,
    };
