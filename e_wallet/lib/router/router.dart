import 'package:auto_route/annotations.dart';
import 'package:e_wallet/screens/Login.dart';
import 'package:e_wallet/screens/authenticator.dart';
import 'package:e_wallet/screens/cash_in.dart';
import 'package:e_wallet/screens/home.dart';
import 'package:e_wallet/screens/loanding_screen.dart';

@MaterialAutoRouter(routes: [
  AutoRoute(page: Authenticator, initial: true),
  AutoRoute(page: LoginScreen),
  AutoRoute(page: HomeScreen),
  AutoRoute(page: LoadingScreen),
  AutoRoute(page: CashInScreen),
])
class $AppRouter {}
