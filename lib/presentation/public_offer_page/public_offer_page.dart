import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../constanta_widgets/custom_app_bar.dart';

class PublicOfferPage extends StatefulWidget {
  const PublicOfferPage({Key? key}) : super(key: key);

  @override
  _PublicOfferPageState createState() => _PublicOfferPageState();
}

class _PublicOfferPageState extends State<PublicOfferPage> {
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
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                Expanded(
                  child: Text(
                    'Я даю соглашение на обработку персональных данных',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 1.3,
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                // --> func
              },
              child: Container(
                height: size.height * 0.072,
                width: size.width,
                margin: EdgeInsets.only(top: size.height * 0.2),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: AppColors.orangeLight,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Сохранить',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
