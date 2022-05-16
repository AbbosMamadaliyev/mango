import 'package:flutter/material.dart';

import '../constanta_widgets/custom_app_bar.dart';

class InfoAboutAppPage extends StatelessWidget {
  const InfoAboutAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildPreferredSize(
        context,
        rightChildWidget: const SizedBox.shrink(),
        leftChildWidget: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: 'Публичная оферта',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Приложение предназначен для обработки заказа.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                height: 1.3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
