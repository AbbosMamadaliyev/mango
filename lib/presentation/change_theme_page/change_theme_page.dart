import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/dataproviders/theme_data_provider.dart';
import '../constanta_widgets/custom_app_bar.dart';

class ChangeThemePage extends StatefulWidget {
  const ChangeThemePage({Key? key}) : super(key: key);

  @override
  _ChangeThemePageState createState() => _ChangeThemePageState();
}

class _ChangeThemePageState extends State<ChangeThemePage> {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<PreferenceService>();
    final isDark = model.isDark;

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
              value: !model.darkMode,
              onChanged: (val) {
                print(val);
                model.darkMode = !val;
                model.setThemeMode(model.darkMode);
                model.setTheme.add(model.darkMode);
              },
              title: Text(
                'Светлая',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SwitchListTile(
              value: model.darkMode,
              onChanged: (val) {
                model.darkMode = val;
                model.setThemeMode(model.darkMode);
                model.setTheme.add(model.darkMode);
              },
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
