
import 'package:pelican/data/remote/dto/orders_response.dart';

abstract class OrderRemoteDataSource {

  Future<OrdersResponse> getOrderByStatus(String vendorIds, String status);

}
