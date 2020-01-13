import 'package:flutter/material.dart';
import 'package:pelican/data/models/order_status.dart';
import 'package:pelican/data/remote/api/shopper_api.dart';
import 'package:pelican/data/remote/datasource/order_remote_data_source.dart';
import 'package:pelican/data/remote/datasource/order_remote_data_source_impl.dart';
import 'package:pelican/data/remote/dto/orders_response.dart';

class TestPage extends StatelessWidget {
  final String _email;
  final ShopperApi _api;

  TestPage(this._email, this._api) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Center(child: Text(_email, style: TextStyle(color: Colors.white))),
            Expanded(child: buildVendorList()),
          ],
        ),
      ),
    );
  }

  Widget buildVendorList() {
    final OrderRemoteDataSource dataSource = OrderRemoteDataSourceImpl(_api);
    return StreamBuilder(
        stream: dataSource.getOrderByStatus("2", OrderStatus.ASSIGNED.name).asStream(),
        builder: (context, snapshot) {
          if (snapshot.data != null) {
            final orders = (snapshot.data as OrdersResponse).orders;
            return ListView.builder(
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(orders[index].externalId));
                });
          }
          return Center();
        });
  }
}
