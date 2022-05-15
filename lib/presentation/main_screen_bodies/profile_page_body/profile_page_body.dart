import 'package:flutter/material.dart';
import 'package:mango/presentation/qr_code_page/qr_code_page.dart';

import '../../constanta_widgets/custom_app_bar.dart';
import '../../notifications_page/notifications_page.dart';
import '../../profile_info_page/profile_info_page.dart';

class ProfilePageBody extends StatefulWidget {
  const ProfilePageBody({Key? key}) : super(key: key);

  @override
  _ProfilePageBodyState createState() => _ProfilePageBodyState();
}

class _ProfilePageBodyState extends State<ProfilePageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildPreferredSize(
        context,
        rightChildWidget: SizedBox.shrink(),
        leftChildWidget: SizedBox.shrink(),
        title: 'Профиль',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 14),
              child: Text(
                'User name',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            _buildListTile('QR code', Icons.qr_code_scanner, () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => QRCodePage()));
            }),
            _buildListTile('Персональные данные', Icons.person_outline, () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfileInfoPage()));
            }),
            _buildListTile('Уведомления', Icons.notifications_none, () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => NotificationPage()));
            }),
            _buildListTile('Изменить язык', Icons.language, () {}),
            _buildListTile(
                'Оформление', Icons.app_registration_outlined, () {}),
            _buildListTile(
                'Публичная оферта', Icons.local_offer_outlined, () {}),
            _buildListTile('О приложении', Icons.info_outline, () {}),
          ],
        ),
      ),
    );
  }

  ListTile _buildListTile(String title, IconData icon, void Function() func) {
    return ListTile(
      onTap: func,
      leading: Icon(icon, color: Colors.black),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.black),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }
}
