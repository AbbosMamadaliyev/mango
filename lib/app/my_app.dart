import 'package:flutter/material.dart';
import 'package:mango/presentation/main_screen/main_screen.dart';
import 'package:provider/provider.dart';

import '../core/app_theme.dart';
import '../domain/dataproviders/theme_data_provider.dart';

class MyApp extends StatelessWidget {
  final bool isDarkMode;

  const MyApp({Key? key, required this.isDarkMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<PreferenceService>();

    return StreamBuilder(
      stream: model.setTheme.stream,
      initialData: isDarkMode,
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: snapshot.data ? AppTheme.dark : AppTheme.light,
          home: const MainScreen(),
        );
      },
    );
  }
}
