import 'package:flutter/material.dart';

class ScannerPageBody extends StatefulWidget {
  const ScannerPageBody({Key? key}) : super(key: key);

  @override
  _ScannerPageBodyState createState() => _ScannerPageBodyState();
}

class _ScannerPageBodyState extends State<ScannerPageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('qr scanner profile'),
      ),
    );
  }
}
