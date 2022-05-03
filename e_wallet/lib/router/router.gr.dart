// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../screens/authenticator.dart' as _i1;
import '../screens/cash_in.dart' as _i5;
import '../screens/home.dart' as _i3;
import '../screens/loanding_screen.dart' as _i4;
import '../screens/Login.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    AuthenticatorRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Authenticator());
    },
    LoginScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    },
    HomeScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeScreen());
    },
    LoadingScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoadingScreen());
    },
    CashInScreenRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.CashInScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(AuthenticatorRoute.name, path: '/'),
        _i6.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i6.RouteConfig(HomeScreenRoute.name, path: '/home-screen'),
        _i6.RouteConfig(LoadingScreenRoute.name, path: '/loading-screen'),
        _i6.RouteConfig(CashInScreenRoute.name, path: '/cash-in-screen')
      ];
}

/// generated route for
/// [_i1.Authenticator]
class AuthenticatorRoute extends _i6.PageRouteInfo<void> {
  const AuthenticatorRoute() : super(AuthenticatorRoute.name, path: '/');

  static const String name = 'AuthenticatorRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i6.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(LoginScreenRoute.name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreenRoute extends _i6.PageRouteInfo<void> {
  const HomeScreenRoute() : super(HomeScreenRoute.name, path: '/home-screen');

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i4.LoadingScreen]
class LoadingScreenRoute extends _i6.PageRouteInfo<void> {
  const LoadingScreenRoute()
      : super(LoadingScreenRoute.name, path: '/loading-screen');

  static const String name = 'LoadingScreenRoute';
}

/// generated route for
/// [_i5.CashInScreen]
class CashInScreenRoute extends _i6.PageRouteInfo<void> {
  const CashInScreenRoute()
      : super(CashInScreenRoute.name, path: '/cash-in-screen');

  static const String name = 'CashInScreenRoute';
}
