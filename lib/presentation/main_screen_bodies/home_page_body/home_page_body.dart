import 'package:flutter/material.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  _HomePageBodyState createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text('click'),
        ),
      ),
    );
  }
}
