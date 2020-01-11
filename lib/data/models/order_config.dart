import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(explicitToJson: true)
class OrderConfig {
  bool checkoutVatRequired = false;
  bool checkoutInvoiceNumberRequired = false;
  bool checkoutSkipValidationAllowed = false;
  bool customerChatEnabled = false;
  bool supportChatEnabled = false;
  bool checkoutInvoicePictureRequired = true;
}
