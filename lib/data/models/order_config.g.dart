// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderConfig _$OrderConfigFromJson(Map<String, dynamic> json) {
  return OrderConfig(
    json['checkoutVatRequired'] as bool,
    json['checkoutInvoiceNumberRequired'] as bool,
    json['checkoutSkipValidationAllowed'] as bool,
    json['customerChatEnabled'] as bool,
    json['supportChatEnabled'] as bool,
    json['checkoutInvoicePictureRequired'] as bool,
  );
}

Map<String, dynamic> _$OrderConfigToJson(OrderConfig instance) =>
    <String, dynamic>{
      'checkoutVatRequired': instance.checkoutVatRequired,
      'checkoutInvoiceNumberRequired': instance.checkoutInvoiceNumberRequired,
      'checkoutSkipValidationAllowed': instance.checkoutSkipValidationAllowed,
      'customerChatEnabled': instance.customerChatEnabled,
      'supportChatEnabled': instance.supportChatEnabled,
      'checkoutInvoicePictureRequired': instance.checkoutInvoicePictureRequired,
    };
