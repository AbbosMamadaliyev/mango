import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:mango/presentation/add_profile_page/add_profile_page.dart';
import 'package:mango/presentation/home_page/home_page.dart';
import 'package:mango/presentation/pay_page/pay_page.dart';
import 'package:mango/presentation/profile_page/profile_page.dart';

import '../scanner_page/scanner_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _bottomNavIndex = 0;

  List<Widget> bodies = [
    HomePage(),
    AddProfilePage(),
    ScannerPage(),
    PayPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: bodies[_bottomNavIndex],
        /*floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: const Icon(
            Icons.qr_code_scanner,
            color: Colors.black,
          ),
        ),*/
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(
              icon: Icons.home_outlined,
              title: '',
            ),
            TabItem(
              icon: Icons.person_add_alt,
              title: '',
            ),
            TabItem(
              icon: Icons.qr_code_scanner,
              title: '',
            ),
            TabItem(
              icon: Icons.account_balance_wallet_outlined,
              title: '',
            ),
            TabItem(
              icon: Icons.person_outline,
              title: '',
            ),
          ],
          initialActiveIndex: 2, //optional, default as 0
          onTap: (int i) => print('click index=$i'),
          top: -80,
          curveSize: 12,
        )

        /*AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        onTap: (index) {
          print(index);
          setState(() => _bottomNavIndex = index);
        },
      ),*/
        );
  }

  List<IconData> iconList = [
    Icons.home_outlined,
    Icons.person_add_alt,
    Icons.account_balance_wallet_outlined,
    Icons.person_outline,
  ];
}
