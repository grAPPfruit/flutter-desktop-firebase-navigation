import 'package:auto_route/auto_route.dart';

import '../feature/home/home_screen.dart';
import '../feature/login/login_screen.dart';
import '../feature/login/login_wrapper_page.dart';
import '../feature/settings/settings_screen.dart';

export 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: LoginWrapperPage,
      children: [
        AutoRoute(
          path: 'app',
          page: EmptyRouterPage,
          name: 'HomeRouter',
          children: [
            AutoRoute(
              path: '',
              page: HomeScreen,
            ),
            AutoRoute(
              path: 'settings',
              page: SettingsScreen,
            ),
          ],
        ),
        AutoRoute(
          path: 'login',
          page: LoginScreen,
          name: 'LoginRouter',
        ),
      ],
    ),
    RedirectRoute(
      path: '*',
      redirectTo: '/',
    ),
  ],
)
class $RootRouter {}
