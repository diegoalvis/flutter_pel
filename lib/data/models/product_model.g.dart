// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return ProductModel(
    json['name'] as String,
    json['category'] as String,
    json['comment'] as String,
    json['imageUrl'] as String,
    json['description'] as String,
    json['quantity'] as int,
    (json['price'] as num)?.toDouble(),
    json['status'] as String,
    json['notFoundReason'] as String,
    json['replacedProductId'] as String,
    json['foundQuantity'] as int,
    (json['realPrice'] as num)?.toDouble(),
    json['options'] as String,
    json['pickupPriority'] as int,
    json['orderId'] as String,
    json['sku'] as String,
    (json['barcodes'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'orderId': instance.orderId,
      'name': instance.name,
      'status': instance.status,
      'quantity': instance.quantity,
      'replacedProductId': instance.replacedProductId,
      'foundQuantity': instance.foundQuantity,
      'realPrice': instance.realPrice,
      'category': instance.category,
      'comment': instance.comment,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
      'price': instance.price,
      'notFoundReason': instance.notFoundReason,
      'options': instance.options,
      'pickupPriority': instance.pickupPriority,
      'sku': instance.sku,
      'barcodes': instance.barcodes,
    };
