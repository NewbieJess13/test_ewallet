import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Database {
  Database({this.uid});
  final String? uid;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<dynamic> getUserBalance() {
    print(uid);
    try {
      Stream snapshot =
          _firestore.collection('users').doc(uid).get().asStream();

      return snapshot;
    } catch (e) {
      rethrow;
    }
  }
}
