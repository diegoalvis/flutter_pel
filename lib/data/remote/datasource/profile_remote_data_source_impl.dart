import 'package:pelican/data/remote/api/shopper_api.dart';
import 'package:pelican/data/remote/datasource/remote_data_source.dart';
import 'package:pelican/data/remote/dto/login_response.dart';

import 'profile_remote_data_source.dart';

class ProfileRemoteDataSourceImpl extends RemoteDataSource implements ProfileRemoteDataSource {

  ProfileRemoteDataSourceImpl(ShopperApi api) : super(api);

  @override
  Future<LoginResponse> login(String username, String password) async {
    return api
        .login(username, password)
        .then((response) => processResponse(response, parseLogin))
        .then((response) => response.data);
  }
}

LoginResponse parseLogin(Map<String, dynamic> map) => LoginResponse.fromJson(map);
