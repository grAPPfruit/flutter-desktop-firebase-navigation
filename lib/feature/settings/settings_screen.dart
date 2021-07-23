import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/bloc/auth/bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('settings')),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: () {
            final authBloc = context.read<AuthBloc>();
            authBloc.logout();
          },
          child: const Text('logout'),
        ),
      ],
    );
  }
}
