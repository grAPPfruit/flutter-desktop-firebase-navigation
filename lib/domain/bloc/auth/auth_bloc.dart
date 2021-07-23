import 'package:bloc/bloc.dart';

import '../../../data/repository/auth_repository.dart';
import '../../../locator/locator.dart';
import 'auth_state.dart';

class AuthBloc extends Cubit<AuthState> {
  AuthBloc() : super(AuthState(isInitializing: true));

  final authRepository = l.get<AuthRepository>();

  void loginAnonymously() {
    authRepository.loginAnonymously();
  }

  void logout() {
    authRepository.logout();
  }
}
