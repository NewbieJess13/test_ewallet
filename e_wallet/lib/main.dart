import 'package:e_wallet/router/router.gr.dart';
import 'package:e_wallet/screens/authenticator.dart';
import 'package:e_wallet/screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

final firebaseInitializerProvider =
    FutureProvider<FirebaseApp>((ref) async => await Firebase.initializeApp());

class MyApp extends ConsumerWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initFirebase = ref.watch(firebaseInitializerProvider);
    return MaterialApp.router(
      title: 'E-Wallet',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Color.fromARGB(255, 5, 75, 187)),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      builder: (context, _) {
        return initFirebase.when(
            data: (data) => Authenticator(),
            error: (e, trace) => Container(),
            loading: () => CircularProgressIndicator());
      },
      // home: initFirebase.when(
      //     data: (data) => Authenticator(),
      //     error: (e, trace) => Container(),
      //     loading: () => CircularProgressIndicator())
    );
  }
}
