import 'package:json_annotation/json_annotation.dart';

part 'order_config.g.dart';

@JsonSerializable(explicitToJson: true)
class OrderConfig {
  final bool checkoutVatRequired;
  final bool checkoutInvoiceNumberRequired;
  final bool checkoutSkipValidationAllowed;
  final bool customerChatEnabled;
  final bool supportChatEnabled;
  final bool checkoutInvoicePictureRequired;

  OrderConfig(this.checkoutVatRequired, this.checkoutInvoiceNumberRequired, this.checkoutSkipValidationAllowed, this.customerChatEnabled, this.supportChatEnabled, this.checkoutInvoicePictureRequired);

  factory OrderConfig.fromJson(Map<String, dynamic> json) => _$OrderConfigFromJson(json);

  Map<String, dynamic> toJson() => _$OrderConfigToJson(this);
}
