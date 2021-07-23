import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  factory User({
    required String email,
    required String userName,
  }) = _User;
}
