import 'package:flutter/material.dart';

import '../../core/app_colors.dart';

PreferredSize buildPreferredSize(
  BuildContext context, {
  required Widget leftChildWidget,
  required Widget rightChildWidget,
  required String title,
}) {
  final size = MediaQuery.of(context).size;

  return PreferredSize(
    child: Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            leftChildWidget,
            SizedBox(width: size.width * 0.2),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            SizedBox(width: size.width * 0.2),
            rightChildWidget,
          ],
        ),
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.orangeLight, AppColors.redOrange],
        ),
      ),
    ),
    preferredSize: Size(MediaQuery.of(context).size.width, 150.0),
  );
}
