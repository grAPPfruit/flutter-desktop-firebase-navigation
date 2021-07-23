import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/bloc/auth/bloc.dart';
import '../router/router.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  late RootRouter _rootRouter;

  @override
  void initState() {
    super.initState();
    _rootRouter = RootRouter();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthBloc()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Main App',
        theme: ThemeData.light(),
        routerDelegate: _rootRouter.delegate(),
        routeInformationParser: _rootRouter.defaultRouteParser(),
      ),
    );
  }
}
