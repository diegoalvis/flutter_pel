import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'vendor_config.dart';

part 'vendor_model.g.dart';

@JsonSerializable(explicitToJson: true)
class VendorModel extends Equatable {
  final String id;
  final String name;
  final String imageUrl;
  final String countryCode;
  final String address;
  final List<String> children;
  final double latitude;
  final double longitude;
  final VendorConfig config;

  VendorModel(this.id, this.name, this.imageUrl, this.countryCode, this.address, this.children, this.latitude, this.longitude,
      this.config);

  factory VendorModel.fromJson(Map<String, dynamic> json) => _$VendorModelFromJson(json);

  Map<String, dynamic> toJson() => _$VendorModelToJson(this);
}
