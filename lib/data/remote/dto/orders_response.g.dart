// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrdersResponse _$OrdersResponseFromJson(Map<String, dynamic> json) {
  return OrdersResponse(
    (json['orders'] as List)
        ?.map((e) => e == null
            ? null
            : BasicOrderModel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..success = json['success'] as bool
    ..error = json['error'] as String
    ..data = json['data'];
}

Map<String, dynamic> _$OrdersResponseToJson(OrdersResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': instance.error,
      'data': instance.data,
      'orders': instance.orders,
    };
