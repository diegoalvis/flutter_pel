import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'vendor_config.dart';


@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Vendor extends Equatable {
  String id;
  String name;
  String imageUrl;
  String countryCode;
  String address;
  List<String> children;
  double latitude;
  double longitude;
  VendorConfig config = VendorConfig();
}
