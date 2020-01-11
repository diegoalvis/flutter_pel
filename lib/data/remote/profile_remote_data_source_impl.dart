import 'package:pelican/data/models/profile.dart';
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
    final response = await _api.login(username, password);
    return processResponse(response, parseProfile);
  }
}


LoginResponse parseProfile(Map<String, dynamic> map) => LoginResponse.fromJson(map);
