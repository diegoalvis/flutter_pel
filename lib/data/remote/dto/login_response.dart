import 'package:json_annotation/json_annotation.dart';
import 'package:pelican/data/models/profile.dart';
import 'package:pelican/data/models/vendor.dart';
import 'package:pelican/data/remote/dto/base_response.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse extends BaseResponse {

  final String accessToken;
  final bool passwordChangeRequired;
  final Profile profile;
  final List<Vendor> vendors;

  LoginResponse(this.accessToken, this.passwordChangeRequired, this.profile, this.vendors);

  factory LoginResponse.fromJson(Map<String, dynamic> json) => _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}
