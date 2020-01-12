import 'package:json_annotation/json_annotation.dart';
import 'package:pelican/data/models/basic_order.dart';
import 'package:pelican/data/models/profile.dart';
import 'package:pelican/data/models/vendor.dart';
import 'package:pelican/data/remote/dto/base_response.dart';

part 'orders_response.g.dart';

/// Orders DTO establishes the base structure to deserialize both a complete or basic order
@JsonSerializable()
class OrdersResponse extends BaseResponse {

  final List<BasicOrder> order;

  OrdersResponse(this.order);

  factory OrdersResponse.fromJson(Map<String, dynamic> json) => _$OrdersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$OrdersResponseToJson(this);
}
