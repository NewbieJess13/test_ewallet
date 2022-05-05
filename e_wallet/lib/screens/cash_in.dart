import 'package:e_wallet/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CashInScreen extends StatefulWidget {
  const CashInScreen({Key? key}) : super(key: key);

  @override
  State<CashInScreen> createState() => _CashInScreenState();
}

class _CashInScreenState extends State<CashInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cash In'),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
        child: Column(
          children: [
            CustomTextField(
              title: 'Amount',
              inputType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Note: Amount should be atleast 100 php and a maximum of 50,000 php per transaction',
              style: TextStyle(
                color: Color.fromARGB(188, 255, 255, 255),
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: 
              child: Text(
                '10 php transaction fee will be automatically charge',
                style: TextStyle(
                  color: Color.fromARGB(188, 255, 255, 255),
                  fontSize: 11,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
