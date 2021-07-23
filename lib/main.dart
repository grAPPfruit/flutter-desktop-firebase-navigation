import 'package:flutter/material.dart';

import 'app/main_app.dart';
import 'app/splash_app.dart';

void main() {
  runApp(const SplashApp(
    onFinishedInitialization: runMainApp,
  ));
}

void runMainApp() {
  runApp(const MainApp());
}
