import 'package:json_annotation/json_annotation.dart';

part 'picker_config.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class PickerConfig {
  final bool supportChatEnabled;

  PickerConfig(this.supportChatEnabled);

  factory PickerConfig.fromJson(Map<String, dynamic> json) => _$PickerConfigFromJson(json);

  Map<String, dynamic> toJson() => _$PickerConfigToJson(this);
}
