import 'package:flutter/material.dart';
import 'package:mango/presentation/constanta_widgets/bottom_nav_bar/bottom_nav_bar_model.dart';
import 'package:mango/presentation/main_screen/main_screen_model.dart';
import 'package:provider/provider.dart';

import 'app/my_app.dart';
import 'domain/dataproviders/theme_data_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  PreferenceService service = PreferenceService();
  var isDarkMode = await service.getThemeMode();
  print('dark theme: $isDarkMode');

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (create) => PreferenceService()..initializeTheme()),
        ChangeNotifierProvider(create: (create) => MainScreenModel()),
        ChangeNotifierProvider(create: (create) => BottomNavBarModel()),
      ],
      child: MyApp(isDarkMode: isDarkMode),
    ),
  );
}
