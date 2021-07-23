import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../router/router.gr.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checklist'),
        actions: [
          IconButton(
            onPressed: () => _pushSettings(context),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return const Text('home');
  }

  void _pushSettings(BuildContext context) {
    context.pushRoute(const SettingsRoute());
  }
}
