import 'package:fimber/fimber.dart';
import 'package:firedart/firedart.dart';

import '../../domain/model/user.dart';

class AuthRepository {
  AuthRepository(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  Stream<User?> get userStream {
    return _firebaseAuth.signInState.asyncMap(_mapFirebaseUser);
  }

  Future<User?> get currentUser => _mapFirebaseUser(true);

  Future<void> loginAnonymously() async {
    await _firebaseAuth.signInAnonymously();
  }

  void logout() {
    _firebaseAuth.signOut();
  }

  Future<User?> _mapFirebaseUser(bool isLoggedIn) async {
    Fimber.d('isLoggedIn: $isLoggedIn');
    if (!isLoggedIn) {
      return null;
    }
    var user = await _firebaseAuth.getUser();
    return User(
      email: user.email ?? '',
      userName: user.displayName ?? '',
    );
  }
}
