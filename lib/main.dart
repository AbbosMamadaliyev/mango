import 'package:flutter/material.dart';
import 'package:mango/presentation/main_screen/main_screen_model.dart';
import 'package:provider/provider.dart';

import 'app/my_app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (create) => MainScreenModel()),
      ],
      child: const MyApp(),
    ),
  );
}
