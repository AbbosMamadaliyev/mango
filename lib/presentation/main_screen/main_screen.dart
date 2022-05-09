import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mango/core/app_colors.dart';
import 'package:mango/presentation/add_profile_page/add_profile_page.dart';
import 'package:mango/presentation/home_page/home_page.dart';
import 'package:mango/presentation/main_screen/main_screen_model.dart';
import 'package:mango/presentation/pay_page/pay_page.dart';
import 'package:mango/presentation/profile_page/profile_page.dart';
import 'package:mango/presentation/registration_page/ragistration_page.dart';
import 'package:provider/provider.dart';

import '../scanner_page/scanner_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _bottomNavIndex = 0;
  bool isLogin = false;

  @override
  void initState() {
    super.initState();

    // isLogin =
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bodies()[_bottomNavIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          setState(() {
            _bottomNavIndex = 4;
          });
        },
        child: Icon(
          Icons.qr_code_scanner,
          color: _bottomNavIndex == 4 ? AppColors.orange : Colors.grey,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        activeColor: AppColors.orange,
        inactiveColor: Colors.grey,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) {
          setState(() => _bottomNavIndex = index);
        },
      ),
    );
  }

  List<IconData> iconList = [
    Icons.home_outlined,
    Icons.person_add_alt,
    Icons.account_balance_wallet_outlined,
    Icons.person_outline,
  ];

  List<Widget> bodies() {
    var log = context.watch<MainScreenModel>().isRegister;

    return [
      HomePage(),
      AddProfilePage(),
      PayPage(),
      log ? ProfilePage() : RegistrationPage(),
      ScannerPage(),
    ];
  }
}
