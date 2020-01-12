import 'package:json_annotation/json_annotation.dart';
import 'package:pelican/data/models/vendor.dart';
import 'package:pelican/data/remote/dto/base_response.dart';

part 'vendor_response.g.dart';

@JsonSerializable()
class VendorResponse extends BaseResponse {

  final List<Vendor> vendors;

  VendorResponse(this.vendors);

  factory VendorResponse.fromJson(Map<String, dynamic> json) => _$VendorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VendorResponseToJson(this);
}
