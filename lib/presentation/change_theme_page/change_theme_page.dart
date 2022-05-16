import 'package:flutter/material.dart';

import '../constanta_widgets/custom_app_bar.dart';

class ChangeThemePage extends StatefulWidget {
  const ChangeThemePage({Key? key}) : super(key: key);

  @override
  _ChangeThemePageState createState() => _ChangeThemePageState();
}

class _ChangeThemePageState extends State<ChangeThemePage> {
  @override
  Widget build(BuildContext context) {
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
        title: 'Оформление',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24),
        child: Column(
          children: [
            SwitchListTile(
              value: false,
              onChanged: (value) {},
              title: Text(
                'Светлая',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SwitchListTile(
              value: false,
              onChanged: (value) {},
              title: Text(
                'Темная',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
