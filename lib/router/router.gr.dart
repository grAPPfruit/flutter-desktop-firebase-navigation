// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../feature/home/home_screen.dart' as _i5;
import '../feature/login/login_screen.dart' as _i4;
import '../feature/login/login_wrapper_page.dart' as _i3;
import '../feature/settings/settings_screen.dart' as _i6;

class RootRouter extends _i1.RootStackRouter {
  RootRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    LoginWrapperPage.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.LoginWrapperPage();
        }),
    HomeRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i1.EmptyRouterPage();
        }),
    LoginRouter.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.LoginScreen();
        }),
    HomeRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.HomeScreen();
        }),
    SettingsRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.SettingsScreen();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(LoginWrapperPage.name, path: '/', children: [
          _i1.RouteConfig(HomeRouter.name, path: 'app', children: [
            _i1.RouteConfig(HomeRoute.name, path: ''),
            _i1.RouteConfig(SettingsRoute.name, path: 'settings')
          ]),
          _i1.RouteConfig(LoginRouter.name, path: 'login')
        ]),
        _i1.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

class LoginWrapperPage extends _i1.PageRouteInfo {
  const LoginWrapperPage({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/', initialChildren: children);

  static const String name = 'LoginWrapperPage';
}

class HomeRouter extends _i1.PageRouteInfo {
  const HomeRouter({List<_i1.PageRouteInfo>? children})
      : super(name, path: 'app', initialChildren: children);

  static const String name = 'HomeRouter';
}

class LoginRouter extends _i1.PageRouteInfo {
  const LoginRouter() : super(name, path: 'login');

  static const String name = 'LoginRouter';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '');

  static const String name = 'HomeRoute';
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute() : super(name, path: 'settings');

  static const String name = 'SettingsRoute';
}
