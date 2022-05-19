import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/app_colors.dart';
import '../../../domain/dataproviders/theme_data_provider.dart';
import '../../constanta_widgets/custom_app_bar.dart';

class AddPersonPageBody extends StatefulWidget {
  const AddPersonPageBody({Key? key}) : super(key: key);

  @override
  _AddPersonPageBodyState createState() => _AddPersonPageBodyState();
}

class _AddPersonPageBodyState extends State<AddPersonPageBody> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final model = context.watch<PreferenceService>();
    final isDark = model.isDark;

    return Scaffold(
      appBar: buildPreferredSize(
        context,
        rightChildWidget: SizedBox.shrink(),
        leftChildWidget: SizedBox.shrink(),
        title: 'Приглашенные',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              const Text(
                'Реферальная ссылка',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * 0.5,
                    child: TextField(),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.autorenew,
                      color: Colors.green,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // --> func
                    },
                    child: Container(
                      height: size.height * 0.06,
                      width: size.width * 0.3,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: AppColors.orangeLight,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'Скопировать',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: size.height * 0.17,
                width: size.width,
                margin: EdgeInsets.only(top: size.height * 0.1),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: isDark
                      ? const Color(0xff5a5a5c)
                      : const Color(0xffece8ec),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Приглашенные',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          SizedBox(height: size.height * 0.03),
                          Text(
                            '6',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const VerticalDivider(color: Colors.grey),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Кешбек',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade500,
                            ),
                          ),
                          SizedBox(height: size.height * 0.03),
                          Text(
                            '59 000 сум',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
