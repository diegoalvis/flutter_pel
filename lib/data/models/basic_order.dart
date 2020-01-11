import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pelican/data/models/order_config.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class BasicOrder extends Equatable {
  String id = "";
  String externalId = "";
  int productCount;
  String firstName = "";
  String lastName = "";
  String customerNationalId = "";
  String phone;
  String pickupTime = "";
  bool cashOrder = false;
//@SerializedName("total")
  double originalTotal = 0.0;
  int processedAmount = 0;
//int status = OrderStatus.UNASSIGNED.id;
  double couponAmount;
  double confirmedTotal = 0.0;
  String comment;
  String vendorId;
  String vendorName;
  double feesTotal = 0.0;
  double tax;
  List<String> prescriptionPhotoUrls;
  String riderName;
  String shopperId = "";
//String currency= Currency.getInstance(Locale.getDefault()).currencyCode
  double collectAtPickup = 0.0;
  OrderConfig config;

//fun getOrderStatus(): OrderStatus = OrderStatus.getStatusById(status)
//
//fun hasCoupon() = couponAmount != null && couponAmount!! > 0.0
//
//fun getCustomer()= "$firstName $lastName"
//
//fun hasComments(): Boolean = !comment.isNullOrEmpty()
//
//override fun compareTo(other: BasicOrder) = pickupTime.compareTo(other.pickupTime)

}
