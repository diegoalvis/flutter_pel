

abstract class ProfileRemoteDataSource {

  Future login(String username, String password);

  Future getAuthToken(String oldToken);

}
