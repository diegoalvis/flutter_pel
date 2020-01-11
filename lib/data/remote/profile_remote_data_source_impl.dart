import 'package:pelican/data/remote/api/shopper_api.dart';
import 'package:pelican/data/remote/dto/login_response.dart';
import 'package:pelican/data/remote/remote_data_source.dart';

import 'profile_remote_data_source.dart';

class ProfileRemoteDataSourceImpl extends RemoteDataSource implements ProfileRemoteDataSource {
  final ShopperApi _api;

  ProfileRemoteDataSourceImpl(this._api);

  @override
  Future getAuthToken(String oldToken) {
    // TODO: implement getAuthToken
    return null;
  }

  @override
  Future<LoginResponse> login(String username, String password) async {
    return _api
        .login(username, password)
        .then((response) => processResponse(response, parseLogin as dynamic))
        .then((response) => response.data as LoginResponse);
  }
}

LoginResponse parseLogin(Map<String, dynamic> map) => LoginResponse.fromJson(map);
