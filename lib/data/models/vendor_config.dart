import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class VendorConfig {
  bool chatEnabled = false;
  int maxOrdersInProgress = 0; // 0 -> limitless number of order in progress
}
