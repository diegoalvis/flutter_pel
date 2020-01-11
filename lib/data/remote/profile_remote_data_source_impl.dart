import 'package:pelican/data/remote/api/shopper_api.dart';

import 'profile_remote_data_source.dart';

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {

  final ShopperApi _api;

  const ProfileRemoteDataSourceImpl(this._api);

  @override
  Future getAuthToken(String oldToken) {
    // TODO: implement getAuthToken
    return null;
  }

  @override
  Future<> login(String username, String password) {
    _api.login(username, password)
    return null;
  }
}
