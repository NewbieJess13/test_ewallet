import 'package:e_wallet/providers/database_provider.dart';
import 'package:e_wallet/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Consumer(builder: (context, ref, _) {
                    final balance = ref.watch(balanceProvider);
                    return balance.when(
                      data: (data) => Text(
                        data['remaining_balance'].toString(),
                        style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      error: (e, trace) => Container(),
                      loading: () => const CircularProgressIndicator(),
                    );
                  }),
                  GestureDetector(
                      onTap: () {},
                      child: Container(
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: Icon(
                            Icons.add_rounded,
                            color: Colors.black,
                            size: 12,
                          )))
                ],
              ),
            ),
            const Text(
              'Remaining Balance',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Wrap(
                  spacing: 10,
                  children: [
                    GestureDetector(
                      onTap: () {
                        const CashInScreenRoute().show(context);
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        color: Colors.red,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
