import 'package:fimber/fimber.dart';
import 'package:firedart/firedart.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('login with email'),
              onPressed: () => _loginWithEmail(context),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('login anonymously'),
              onPressed: () => _loginAnonymously(context),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _loginWithEmail(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signIn('m@m.de', 'password1');
      final user = await FirebaseAuth.instance.getUser();
      Fimber.d('user: $user');
    } catch (ex) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('error during login: $ex')));
      Fimber.e('Error: login with email', ex: ex);
    }
  }

  Future<void> _loginAnonymously(BuildContext context) async {
    await FirebaseAuth.instance.signInAnonymously();
    final user = await FirebaseAuth.instance.getUser();
    Fimber.d('user: $user');
  }
}
