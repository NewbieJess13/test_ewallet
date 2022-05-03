import 'package:e_wallet/providers/auth_provider.dart';
import 'package:e_wallet/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool buttonLoading = false;

  setLoading() {
    setState(() {
      buttonLoading = !buttonLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Consumer(builder: (BuildContext context, WidgetRef ref, _) {
            final _auth = ref.watch(authenticationProvider);

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 60,
                ),
                CustomTextField(
                  title: 'Email',
                  controller: emailController,
                  hintText: 'test@mail.com',
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomTextField(
                  title: 'Password',
                  controller: passwordController,
                  obsureText: true,
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                      onPressed: () {
                        setLoading();
                        _auth
                            .signInWithEmailAndPassword(emailController.text,
                                passwordController.text, context)
                            .whenComplete(() =>
                                _auth.authStateChange.listen((event) async {
                                  if (event == null) {
                                    setLoading();
                                    return;
                                  }
                                }));
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      child: buttonLoading
                          ? CircularProgressIndicator()
                          : Text(
                              'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 17,
                                  color: Colors.black),
                            )),
                )
              ],
            );
          }),
        ),
      ),
    ));
  }
}
