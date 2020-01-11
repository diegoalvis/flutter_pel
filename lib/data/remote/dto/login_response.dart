import 'package:json_annotation/json_annotation.dart';
import 'package:pelican/data/models/profile.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class LoginResponse {

  List<Vendor> vendors;
  Profile profile;
  String accessToken;
  bool passwordChangeRequired;
}
