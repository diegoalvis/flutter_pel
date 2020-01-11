import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class PickerConfig {
  bool supportChatEnabled = false;
}
