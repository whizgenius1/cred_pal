import 'package:cred_pal/home_screen.dart';
import 'package:cred_pal/router/go_route_list.dart';
import 'package:cred_pal/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>(
  debugLabel: 'root',
);

final goRouterConfig = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: GoRouteList.splash,
  routes: [
    GoRoute(
      name: GoRouteList.splash,
      path: GoRouteList.splash,
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen(),
    ),
    GoRoute(
      name: GoRouteList.home,
      path: GoRouteList.home,
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
    ),
  ],
);
