// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BasicOrderModel _$BasicOrderModelFromJson(Map<String, dynamic> json) {
  return BasicOrderModel(
    json['id'] as String,
    json['externalId'] as String,
    json['productCount'] as int,
    json['firstName'] as String,
    json['customerNationalId'] as String,
    json['lastName'] as String,
    json['phone'] as String,
    json['pickupTime'] as String,
    json['cashOrder'] as bool,
    (json['total'] as num)?.toDouble(),
    json['processedItemsCount'] as int,
    (json['couponAmount'] as num)?.toDouble(),
    (json['confirmedTotal'] as num)?.toDouble(),
    json['comment'] as String,
    json['vendorId'] as int,
    json['vendorName'] as String,
    (json['feesTotal'] as num)?.toDouble(),
    (json['tax'] as num)?.toDouble(),
    (json['prescriptionPhotoUrls'] as List)?.map((e) => e as String)?.toList(),
    json['riderName'] as String,
    json['shopperId'] as int,
    (json['collectAtPickup'] as num)?.toDouble(),
    json['config'] == null
        ? null
        : OrderConfig.fromJson(json['config'] as Map<String, dynamic>),
    json['status'] as int,
    json['currency'] as String,
  );
}

Map<String, dynamic> _$BasicOrderModelToJson(BasicOrderModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'externalId': instance.externalId,
      'productCount': instance.productCount,
      'processedItemsCount': instance.processedItemsCount,
      'tax': instance.tax,
      'feesTotal': instance.feesTotal,
      'couponAmount': instance.couponAmount,
      'confirmedTotal': instance.confirmedTotal,
      'firstName': instance.firstName,
      'customerNationalId': instance.customerNationalId,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'pickupTime': instance.pickupTime,
      'cashOrder': instance.cashOrder,
      'total': instance.total,
      'status': instance.status,
      'comment': instance.comment,
      'vendorId': instance.vendorId,
      'vendorName': instance.vendorName,
      'riderName': instance.riderName,
      'shopperId': instance.shopperId,
      'prescriptionPhotoUrls': instance.prescriptionPhotoUrls,
      'currency': instance.currency,
      'collectAtPickup': instance.collectAtPickup,
      'config': instance.config?.toJson(),
    };
