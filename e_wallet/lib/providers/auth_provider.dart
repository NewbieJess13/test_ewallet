import 'package:e_wallet/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authenticationProvider = Provider<Authentication>(
    (ProviderRef<Authentication> ref) => Authentication());

final authStateProvider = StreamProvider<User?>(
    (ref) => ref.read(authenticationProvider).authStateChange);
