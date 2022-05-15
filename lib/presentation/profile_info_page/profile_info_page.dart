import 'package:flutter/material.dart';
import 'package:mango/presentation/edit_personal_info_page/edit_personal_info_page.dart';

import '../../core/app_colors.dart';
import '../constanta_widgets/custom_app_bar.dart';

class ProfileInfoPage extends StatefulWidget {
  const ProfileInfoPage({Key? key}) : super(key: key);

  @override
  _ProfileInfoPageState createState() => _ProfileInfoPageState();
}

class _ProfileInfoPageState extends State<ProfileInfoPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildPreferredSize(
        context,
        rightChildWidget: const SizedBox.shrink(),
        leftChildWidget: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: 'Персональные данные',
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.025),
              Text(
                'User name',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              PersonalInfoWidget(title: 'ID пользователя', info: '2325'),
              PersonalInfoWidget(title: 'Дата рождения', info: '11.02.1997'),
              PersonalInfoWidget(title: 'Адрес', info: 'Tashkent'),
              PersonalInfoWidget(title: 'Страна', info: 'Uzbekistan'),
              PersonalInfoWidget(title: 'Email', info: 'test25@gmail.com'),
              PersonalInfoWidget(title: 'Телефон', info: '998 (90) 122-23-23'),
              GestureDetector(
                onTap: () {
                  // --> func
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => EditPersonalInfoPage()));
                },
                child: Container(
                  height: size.height * 0.072,
                  width: size.width,
                  margin: EdgeInsets.only(top: size.height * 0.2),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.orangeLight,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Редактировать',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PersonalInfoWidget extends StatelessWidget {
  final String title;
  final String info;
  const PersonalInfoWidget({
    Key? key,
    required this.title,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height * 0.025),
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        SizedBox(height: size.height * 0.008),
        Text(
          info,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
