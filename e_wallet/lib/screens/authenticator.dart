import 'package:e_wallet/providers/auth_provider.dart';
import 'package:e_wallet/screens/Login.dart';
import 'package:e_wallet/screens/home.dart';
import 'package:e_wallet/screens/loanding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Authenticator extends ConsumerWidget {
  const Authenticator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _authState = ref.watch(authStateProvider);
    return _authState.when(
        data: (data) {
          if (data != null) return HomeScreen();
          return LoginScreen();
        },
        error: (e, trace) => Container(),
        loading: () => LoadingScreen());
  }
}
