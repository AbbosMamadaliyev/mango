import 'package:flutter/material.dart';
import 'package:mango/presentation/main_screen/main_screen_model.dart';
import 'package:mango/presentation/registration_page/ragistration_page.dart';
import 'package:provider/provider.dart';

import '../constanta_widgets/bottom_nav_bar/bottom_nav_bar.dart';
import '../constanta_widgets/bottom_nav_bar/bottom_nav_bar_model.dart';
import '../main_screen_bodies/add_person_page_body/add_person_page_body.dart';
import '../main_screen_bodies/home_page_body/home_page_body.dart';
import '../main_screen_bodies/pay_page_body/pay_page_body.dart';
import '../main_screen_bodies/profile_page_body/profile_page_body.dart';
import '../main_screen_bodies/scanner_page_body/scanner_page_body.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var _bottomNavIndex = context.watch<BottomNavBarModel>().bottomNavIndex;

    return BottomNavBarWidget(
      body: bodies()[_bottomNavIndex],
    );
  }

  List<Widget> bodies() {
    var log = context.watch<MainScreenModel>().isRegister;

    return [
      HomePageBody(),
      AddPersonPageBody(),
      PayPageBody(),
      log ? ProfilePageBody() : RegistrationPage(),
      ScannerPageBody(),
    ];
  }
}
