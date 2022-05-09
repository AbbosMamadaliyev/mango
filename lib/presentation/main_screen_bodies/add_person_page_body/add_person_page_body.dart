import 'package:flutter/material.dart';

class AddPersonPageBody extends StatefulWidget {
  const AddPersonPageBody({Key? key}) : super(key: key);

  @override
  _AddPersonPageBodyState createState() => _AddPersonPageBodyState();
}

class _AddPersonPageBodyState extends State<AddPersonPageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('add person'),
      ),
    );
  }
}
