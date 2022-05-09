import 'package:flutter/material.dart';
import 'package:mango/presentation/add_profile_page/add_profile_page.dart';
import 'package:mango/presentation/main_screen/main_screen_model.dart';
import 'package:mango/presentation/registration_page/ragistration_page.dart';
import 'package:provider/provider.dart';

import '../constanta_widgets/bottom_nav_bar/bottom_nav_bar.dart';
import '../constanta_widgets/bottom_nav_bar/bottom_nav_bar_model.dart';
import '../home_page_body/home_page_body.dart';
import '../pay_page_body/pay_page_body.dart';
import '../profile_page_body/profile_page_body.dart';
import '../scanner_page_body/scanner_page_body.dart';

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
      AddProfilePageBody(),
      PayPageBody(),
      log ? ProfilePageBody() : RegistrationPage(),
      ScannerPageBody(),
    ];
  }
}
