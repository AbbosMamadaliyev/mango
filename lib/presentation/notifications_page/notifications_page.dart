import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../constanta_widgets/custom_app_bar.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
        title: 'Уведомление',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                SwitchListTile(
                  value: false,
                  onChanged: (value) {},
                  title: Text(
                    'Заказы',
                    style: textStyle,
                  ),
                ),
                SwitchListTile(
                  value: false,
                  onChanged: (value) {},
                  title: Text(
                    'Акции и скидки',
                    style: textStyle,
                  ),
                ),
                SwitchListTile(
                  value: false,
                  onChanged: (value) {},
                  title: Text(
                    'Реферальная ссылка',
                    style: textStyle,
                  ),
                ),
                SwitchListTile(
                  value: false,
                  onChanged: (value) {},
                  title: Text(
                    'Кэшбек',
                    style: textStyle,
                  ),
                ),
                SwitchListTile(
                  value: false,
                  onChanged: (value) {},
                  title: Text(
                    'Оплата',
                    style: textStyle,
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

  final textStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}
