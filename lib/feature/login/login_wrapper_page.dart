import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/bloc/auth/auth_bloc.dart';
import '../../router/router.gr.dart';

class LoginWrapperPage extends StatelessWidget {
  const LoginWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoggedIn = context.select(
      (AuthBloc bloc) => bloc.state.isLoggedIn,
    );

    return AutoRouter.declarative(
      routes: (_) => [
        if (isLoggedIn) const HomeRouter() else const LoginRouter(),
      ],
    );
  }
}
