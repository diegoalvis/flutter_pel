import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pelican/data/models/order_config.dart';

part 'basic_order_model.g.dart';

@JsonSerializable(explicitToJson: true)
class BasicOrderModel extends Equatable {
  final String id;
  final String externalId;
  final int productCount;
  final int processedItemsCount;
  final double tax;
  final double feesTotal;
  final double couponAmount;
  final double confirmedTotal;
  final String firstName;
  final String customerNationalId;
  final String lastName;
  final String phone;
  final String pickupTime;
  final bool cashOrder;
  final double total;
  final int status;
  final String comment;
  final int vendorId;
  final String vendorName;
  final String riderName;
  final int shopperId;
  final List<String> prescriptionPhotoUrls;
  final String currency;
  final double collectAtPickup;
  final OrderConfig config;

  BasicOrderModel(
    this.id,
    this.externalId,
    this.productCount,
    this.firstName,
    this.customerNationalId,
    this.lastName,
    this.phone,
    this.pickupTime,
    this.cashOrder,
    this.total,
    this.processedItemsCount,
    this.couponAmount,
    this.confirmedTotal,
    this.comment,
    this.vendorId,
    this.vendorName,
    this.feesTotal,
    this.tax,
    this.prescriptionPhotoUrls,
    this.riderName,
    this.shopperId,
    this.collectAtPickup,
    this.config, this.status, this.currency,
  );

  factory BasicOrderModel.fromJson(Map<String, dynamic> json) => _$BasicOrderModelFromJson(json);

  Map<String, dynamic> toJson() => _$BasicOrderModelToJson(this);

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
