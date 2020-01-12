import 'package:pelican/data/remote/api/shopper_api.dart';
import 'package:pelican/data/remote/datasource/remote_data_source.dart';
import 'package:pelican/data/remote/dto/orders_response.dart';

import 'order_remote_data_source.dart';

class OrderRemoteDataSourceImpl extends RemoteDataSource implements OrderRemoteDataSource {
  OrderRemoteDataSourceImpl(ShopperApi api) : super(api);

  @override
  Future<OrdersResponse> getOrderByStatus(String vendorIds, String status) {
    return api
        .getOrdersByStatus(vendorIds, status)
        .then((response) => processResponse(response, parseOrders))
        .then((response) => response.data);
  }
}

OrdersResponse parseOrders(Map<String, dynamic> map) => OrdersResponse.fromJson(map);
