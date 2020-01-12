class OrderStatus {
  final int id;
  final String displayableName;
  final String name;

  const OrderStatus(this.id, this.displayableName, this.name);

  static const ON_HOLD = const OrderStatus(0, "On Hold", "ON_HOLD");
  static const UNASSIGNED = const OrderStatus(10, "Unassigned", "UNASSIGNED");
  static const ASSIGNED = const OrderStatus(20, "To do", "ASSIGNED");
  static const STARTED = const OrderStatus(30, "Shopping", "STARTED");
  static const READY_FOR_CHECKOUT = const OrderStatus(40, "Ready for checkout", "READY_FOR_CHECKOUT");
  static const CHECKOUT_CONFIRMED = const OrderStatus(50, "Checkout confirmed", "CHECKOUT_CONFIRMED");
  static const READY_FOR_PICKUP = const OrderStatus(60, "Ready for pickup", "READY_FOR_PICKUP");
  static const PICKED_UP = const OrderStatus(70, "Picked up", "PICKED_UP");
  static const CANCELLED = const OrderStatus(80, "Cancelled", "CANCELLED");
  static const HANDED_EXTERNALLY = const OrderStatus(90, "Handed externally", "HANDLED_EXTERNALLY");

  static List values() => List.of([
        ON_HOLD,
        UNASSIGNED,
        ASSIGNED,
        STARTED,
        READY_FOR_CHECKOUT,
        CHECKOUT_CONFIRMED,
        READY_FOR_PICKUP,
        PICKED_UP,
        CANCELLED,
        HANDED_EXTERNALLY,
      ]);

  /// Get order status by id
  OrderStatus getStatusById(int id) {
    for (OrderStatus status in values()) {
      if (status.id == id) {
        return status;
      }
    }
    return UNASSIGNED;
  }
}
