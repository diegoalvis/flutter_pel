import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'product_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductModel extends Equatable {
  static const _CUSTOM_ITEM_CATEGORY = "Custom Item";

  final String productId = Uuid().v1();
  final String orderId;
  final String name;
  final String status;
  final int quantity;
  final String replacedProductId;
  final int foundQuantity;
  final double realPrice;
  String category;
  String comment;
  String imageUrl;
  String description;
  double price = 0.0;
  String notFoundReason;
  String options;
  int pickupPriority = 0;
  String sku;
  List<String> barcodes;

  ProductModel(
      this.name,
      this.category,
      this.comment,
      this.imageUrl,
      this.description,
      this.quantity,
      this.price,
      this.status,
      this.notFoundReason,
      this.replacedProductId,
      this.foundQuantity,
      this.realPrice,
      this.options,
      this.pickupPriority,
      this.orderId,
      this.sku,
      this.barcodes);

  ProductModel.custom(
      this.name, this.quantity, this.status, this.replacedProductId, this.foundQuantity, this.realPrice, this.orderId) {
    this.description = "Custom item added to order";
  }

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

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
