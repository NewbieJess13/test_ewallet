import 'package:e_wallet/providers/auth_provider.dart';
import 'package:e_wallet/services/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final databaseProvider = Provider<Database>(
    (ref) => Database(uid: ref.read(authStateProvider).value!.uid));

final balanceProvider = StreamProvider<dynamic>(
    (ref) => ref.watch(databaseProvider).getUserBalance());
