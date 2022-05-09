import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/app_colors.dart';
import 'bottom_nav_bar_model.dart';

class BottomNavBarWidget extends StatefulWidget {
  final Widget body;

  const BottomNavBarWidget({Key? key, required this.body}) : super(key: key);

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    var _bottomNavIndex = context.watch<BottomNavBarModel>().bottomNavIndex;

    return Scaffold(
      body: widget.body,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: context.read<BottomNavBarModel>().onPressed,
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
        onTap: context.read<BottomNavBarModel>().onTap,
      ),
    );
  }

  List<IconData> iconList = [
    Icons.home_outlined,
    Icons.person_add_alt,
    Icons.account_balance_wallet_outlined,
    Icons.person_outline,
  ];
}
