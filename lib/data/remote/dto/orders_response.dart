import 'package:json_annotation/json_annotation.dart';
import 'package:pelican/data/models/basic_order_model.dart';
import 'package:pelican/data/models/profile_model.dart';
import 'package:pelican/data/models/vendor_model.dart';
import 'package:pelican/data/remote/dto/base_response.dart';

part 'orders_response.g.dart';

/// Orders DTO establishes the base structure to deserialize both a complete or basic order
@JsonSerializable()
class OrdersResponse extends BaseResponse {

  final List<BasicOrderModel> orders;

  OrdersResponse(this.orders);

  factory OrdersResponse.fromJson(Map<String, dynamic> json) => _$OrdersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersResponseToJson(this);
}
