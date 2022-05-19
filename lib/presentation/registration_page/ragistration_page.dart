import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mango/core/app_colors.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../constanta_widgets/custom_app_bar.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final phoneNumberController = TextEditingController();
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildPreferredSize(
        context,
        rightChildWidget: SizedBox.shrink(),
        leftChildWidget: SizedBox.shrink(),
        title: 'Регистрация',
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            SizedBox(height: size.height * 0.02),
            const Text(
              'Пожалуйста пройдите регистрацию',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              'Мы пришлем SMS с кодом подтверждения для входа в ваш аккаунт',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade400),
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Номер телефона',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade400,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.5,
                  child: TextField(
                    inputFormatters: [maskFormatter],
                    controller: phoneNumberController,
                    decoration: InputDecoration(
                      prefixText: '+998',
                      hintText: '(00) 000 00 00',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: checkValue,
                  onChanged: (val) {
                    setState(() {
                      checkValue = val!;
                    });
                  },
                ),
                const Text(
                  'Согласен с условиями сервиса',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    // color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
            Container(
              height: size.height * 0.072,
              width: size.width,
              margin: const EdgeInsets.only(top: 32),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.orangeLight,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                'Далее',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  var maskFormatter = MaskTextInputFormatter(
      mask: '(##) ### ## ##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);
}
