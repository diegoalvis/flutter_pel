import 'package:json_annotation/json_annotation.dart';

part 'vendor_config.g.dart';

@JsonSerializable(explicitToJson: true)
class VendorConfig {
  final bool chatEnabled;
  final int maxOrdersInProgress;// 0 -> limitless number of order in progress

  VendorConfig(this.chatEnabled, this.maxOrdersInProgress);

  factory VendorConfig.fromJson(Map<String, dynamic> json) => _$VendorConfigFromJson(json);

  Map<String, dynamic> toJson() => _$VendorConfigToJson(this);

}
