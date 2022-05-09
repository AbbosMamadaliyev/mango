import 'package:flutter/material.dart';
import 'package:mango/presentation/constanta_widgets/bottom_nav_bar/bottom_nav_bar_model.dart';
import 'package:mango/presentation/main_screen/main_screen_model.dart';
import 'package:provider/provider.dart';

import 'app/my_app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (create) => MainScreenModel()),
        ChangeNotifierProvider(create: (create) => BottomNavBarModel()),
      ],
      child: const MyApp(),
    ),
  );
}
