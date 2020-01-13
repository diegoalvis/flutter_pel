import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pelican/data/models/picker_config.dart';

part 'profile_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProfileModel extends Equatable {
  final String shopperId;
  final String firstName;
  final String lastName;
  final String email;
  final String contractType;
  final String roosterURL;
  final String profileImageUrl;
  final bool managedWithRooster;
  final PickerConfig config;

  ProfileModel(this.shopperId, this.firstName, this.lastName, this.email, this.contractType, this.roosterURL, this.profileImageUrl, this.managedWithRooster, this.config);

  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}
