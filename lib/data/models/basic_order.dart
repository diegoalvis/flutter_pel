import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pelican/data/models/order_config.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class BasicOrder extends Equatable {
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

//@SerializedName("total")
  final double originalTotal;

//int status = OrderStatus.UNASSIGNED.id;
  final String comment;
  final String vendorId;
  final String vendorName;
  final String riderName;
  final String shopperId;
  final List<String> prescriptionPhotoUrls;

//String currency= Currency.getInstance(Locale.getDefault()).currencyCode
  final double collectAtPickup;
  final OrderConfig config;

  BasicOrder(
    this.id,
    this.externalId,
    this.productCount,
    this.firstName,
    this.customerNationalId,
    this.lastName,
    this.phone,
    this.pickupTime,
    this.cashOrder,
    this.originalTotal,
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
    this.config,
  );

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