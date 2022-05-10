import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mango/core/app_colors.dart';

import '../../constanta_widgets/custom_app_bar.dart';

class PayPageBody extends StatefulWidget {
  const PayPageBody({Key? key}) : super(key: key);

  @override
  _PayPageBodyState createState() => _PayPageBodyState();
}

class _PayPageBodyState extends State<PayPageBody> {
  bool isPayme = false;
  bool isClick = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildPreferredSize(
        context,
        rightChildWidget: SizedBox.shrink(),
        leftChildWidget: SizedBox.shrink(),
        title: 'Платежи',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              SizedBox(height: size.height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Способы оплаты',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // --> func
                    },
                    child: Row(
                      children: [
                        Text(
                          'История',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Icon(Icons.history),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.02),
              GestureDetector(
                onTap: () {
                  // -- > func
                  setState(() {
                    isClick = false;
                    isPayme = !isPayme;
                  });
                },
                child: Container(
                  height: size.height * 0.07,
                  width: size.width,
                  margin: const EdgeInsets.only(top: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: isPayme
                            ? AppColors.orangeLight
                            : Color(0xffd0d0cd)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/payme.png'),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: isPayme ? 6 : 1,
                            color: isPayme
                                ? AppColors.orangeLight
                                : const Color(0xffd0d0cd),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // -- > func
                  setState(() {
                    isPayme = false;
                    isClick = !isClick;
                  });
                },
                child: Container(
                  height: size.height * 0.07,
                  width: size.width,
                  margin: const EdgeInsets.only(top: 16),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isClick
                          ? AppColors.orangeLight
                          : const Color(0xffd0d0cd),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/click.png'),
                      Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: isClick ? 6 : 1,
                            color: isClick
                                ? AppColors.orangeLight
                                : const Color(0xffd0d0cd),
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                width: size.width,
                height: size.height * 0.072,
                alignment: Alignment.center,
                child: TextField(
                  // controller: numberController,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    hintText: 'введите номер карты',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black38),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffefebee),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Container(
                width: size.width,
                height: size.height * 0.072,
                alignment: Alignment.center,
                child: TextField(
                  // controller: numberController,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    hintText: 'введите сумму',
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.black38),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffefebee),
                ),
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
                    'Oплатить',
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
