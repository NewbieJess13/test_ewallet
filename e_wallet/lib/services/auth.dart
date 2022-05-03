import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> get authStateChange => _auth.authStateChanges();

  Future<void> signInWithEmailAndPassword(
      String email, String password, BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      await showOkAlertDialog(
          context: context, title: 'Login Error', message: e.message);
    }
  }
}
