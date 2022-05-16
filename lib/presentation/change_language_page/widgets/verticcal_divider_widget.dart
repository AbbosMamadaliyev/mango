import 'package:flutter/material.dart';

class VerticalDividerWidget extends StatelessWidget {
  const VerticalDividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.05,
      width: 1,
      color: Colors.grey,
    );
  }
}
