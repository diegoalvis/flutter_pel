import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pelican/data/models/picker_config.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Profile extends Equatable {
  String shopperId;
  String firstName;
  String lastName;
  String email;
  String contractType;
  String roosterURL;
  String profileImageUrl;
  bool managedWithRooster = false;
  PickerConfig config;
}
