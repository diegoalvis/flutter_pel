import 'package:pelican/data/remote/api/base_response.dart';

class AuthResponse extends BaseResponse {
  final String accessToken;

  AuthResponse(this.accessToken);
}
