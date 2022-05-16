import 'package:flutter/material.dart';
import 'package:mango/presentation/change_language_page/widgets/language_card_widget.dart';

import '../../core/app_colors.dart';
import '../constanta_widgets/custom_app_bar.dart';

class ChangeLanguagePage extends StatefulWidget {
  const ChangeLanguagePage({Key? key}) : super(key: key);

  @override
  _ChangeLanguagePageState createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> {
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
        title: 'Язык',
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                LanguagesCardWidget(
                  lang: 'Узбекский',
                  value: 1,
                  groupValue: 1,
                  iconFlag: 'uz',
                ),
                LanguagesCardWidget(
                  lang: 'Русский',
                  value: 1,
                  groupValue: 1,
                  iconFlag: 'ru',
                ),
                LanguagesCardWidget(
                  lang: 'Английский',
                  value: 1,
                  groupValue: 1,
                  iconFlag: 'gb',
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                // --> func
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
    );
  }
}
