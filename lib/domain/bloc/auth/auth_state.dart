import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../model/user.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    @Default(false) bool isInitializing,
    @Default(false) bool isLoggedIn,
    User? user,
  }) = _AuthState;
}
