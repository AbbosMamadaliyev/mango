import 'package:flutter/material.dart';
import 'package:mango/presentation/qr_code_page/qr_code_page.dart';
import 'package:provider/provider.dart';

import '../../../domain/dataproviders/theme_data_provider.dart';
import '../../change_language_page/change_language_page.dart';
import '../../change_theme_page/change_theme_page.dart';
import '../../constanta_widgets/custom_app_bar.dart';
import '../../info_about_app_page/info_about_app_page.dart';
import '../../notifications_page/notifications_page.dart';
import '../../profile_info_page/profile_info_page.dart';
import '../../public_offer_page/public_offer_page.dart';

class ProfilePageBody extends StatefulWidget {
  const ProfilePageBody({Key? key}) : super(key: key);

  @override
  _ProfilePageBodyState createState() => _ProfilePageBodyState();
}

class _ProfilePageBodyState extends State<ProfilePageBody> {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<PreferenceService>();
    final isDark = model.isDark;

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
            _buildListTile(
              'QR code',
              Icons.qr_code_scanner,
              () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => QRCodePage()));
              },
              isDark,
            ),
            _buildListTile(
              'Персональные данные',
              Icons.person_outline,
              () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfileInfoPage()));
              },
              isDark,
            ),
            _buildListTile(
              'Уведомления',
              Icons.notifications_none,
              () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => NotificationPage()));
              },
              isDark,
            ),
            _buildListTile(
              'Изменить язык',
              Icons.language,
              () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChangeLanguagePage()));
              },
              isDark,
            ),
            _buildListTile(
              'Оформление',
              Icons.app_registration_outlined,
              () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ChangeThemePage()));
              },
              isDark,
            ),
            _buildListTile(
              'Публичная оферта',
              Icons.local_offer_outlined,
              () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PublicOfferPage()));
              },
              isDark,
            ),
            _buildListTile(
              'О приложении',
              Icons.info_outline,
              () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => InfoAboutAppPage()));
              },
              isDark,
            ),
          ],
        ),
      ),
    );
  }

  ListTile _buildListTile(
    String title,
    IconData icon,
    void Function() func,
    bool isDark,
  ) {
    return ListTile(
      onTap: func,
      leading: Icon(icon, color: isDark ? Colors.white : Colors.black),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: isDark ? Colors.white : Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          color: isDark ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
