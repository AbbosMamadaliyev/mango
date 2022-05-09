import 'package:flutter/material.dart';

class AddProfilePageBody extends StatefulWidget {
  const AddProfilePageBody({Key? key}) : super(key: key);

  @override
  _AddProfilePageBodyState createState() => _AddProfilePageBodyState();
}

class _AddProfilePageBodyState extends State<AddProfilePageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('add profile'),
      ),
    );
  }
}
