import 'package:flutter/material.dart';

import '../../core/app_colors.dart';
import '../constanta_widgets/custom_app_bar.dart';

class EditPersonalInfoPage extends StatefulWidget {
  const EditPersonalInfoPage({Key? key}) : super(key: key);

  @override
  _EditPersonalInfoPageState createState() => _EditPersonalInfoPageState();
}

class _EditPersonalInfoPageState extends State<EditPersonalInfoPage> {
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
        title: 'Редактировать',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.height * 0.02),
              EditInfoFormWidget(title: 'Имя'),
              EditInfoFormWidget(title: 'Дата рождения'),
              EditInfoFormWidget(title: 'Адрес'),
              EditInfoFormWidget(title: 'Страна'),
              EditInfoFormWidget(title: 'Email'),
              EditInfoFormWidget(title: 'Телефон'),
              GestureDetector(
                onTap: () {
                  // --> func
                  // commit

                  //'/'
                },
                child: Container(
                  height: size.height * 0.072,
                  width: size.width,
                  margin: EdgeInsets.only(top: size.height * 0.08),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: AppColors.orangeLight,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Сохранить',
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

class EditInfoFormWidget extends StatelessWidget {
  final String title;
  const EditInfoFormWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 18),
        Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 8),
        Container(
          width: size.width,
          height: size.height * 0.067,
          alignment: Alignment.center,
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: title,
              border: InputBorder.none,
              hintStyle: const TextStyle(color: Colors.black38),
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xffefebee),
          ),
        ),
      ],
    );
  }
}
