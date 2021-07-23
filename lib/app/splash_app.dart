import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';

import '../locator/locator.dart';

class SplashApp extends StatefulWidget {
  const SplashApp({
    Key? key,
    required this.onFinishedInitialization,
  }) : super(key: key);

  final VoidCallback onFinishedInitialization;

  @override
  _SplashAppState createState() => _SplashAppState();
}

class _SplashAppState extends State<SplashApp> {
  bool isInitializing = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!isInitializing) {
      isInitializing = true;
      initialize();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: SafeArea(
          child: Column(
            children: const [
              Text('splash screen'),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> initialize() async {
    Fimber.d('initializing dependencies …');
    await l.initDependencies();
    widget.onFinishedInitialization();
    Fimber.d('initializing dependencies finished');
  }
}
