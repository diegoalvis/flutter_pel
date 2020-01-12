import 'package:pelican/data/remote/api/shopper_api.dart';
import 'package:pelican/data/remote/datasource/remote_data_source.dart';
import 'package:pelican/data/remote/datasource/vendor_remote_data_source.dart';
import 'package:pelican/data/remote/dto/vendor_response.dart';

class VendorRemoteDataSourceImpl extends RemoteDataSource implements VendorRemoteDataSource {
  final ShopperApi _api;

  VendorRemoteDataSourceImpl(this._api);

  @override
  Future getVendors() {
    return _api.getVendors().then((response) => processResponse(response, parseVendors)).then((response) => response.data);
  }
}

VendorResponse parseVendors(Map<String, dynamic> map) => VendorResponse.fromJson(map);