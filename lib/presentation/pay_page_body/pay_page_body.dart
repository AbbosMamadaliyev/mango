import 'package:flutter/material.dart';

class PayPageBody extends StatefulWidget {
  const PayPageBody({Key? key}) : super(key: key);

  @override
  _PayPageBodyState createState() => _PayPageBodyState();
}

class _PayPageBodyState extends State<PayPageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('pay pay'),
      ),
    );
  }
}
