import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mango/presentation/change_language_page/widgets/verticcal_divider_widget.dart';
import 'package:provider/provider.dart';

import '../../../domain/dataproviders/theme_data_provider.dart';

class LanguagesCardWidget extends StatefulWidget {
  final int value;
  int groupValue;
  final String lang;
  final String iconFlag;

  LanguagesCardWidget(
      {Key? key,
      required this.value,
      required this.groupValue,
      required this.lang,
      required this.iconFlag})
      : super(key: key);

  @override
  State<LanguagesCardWidget> createState() => _LanguagesCardWidgetState();
}

class _LanguagesCardWidgetState extends State<LanguagesCardWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final model = context.watch<PreferenceService>();
    final isDark = model.isDark;

    return Container(
      height: size.height * 0.08,
      width: size.width,
      padding: const EdgeInsets.only(left: 18, right: 8),
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: isDark ? const Color(0xff79797b) : const Color(0xffeeeeee),
        ),
        color: isDark ? const Color(0xff5a5a5c) : const Color(0xfffbfbfb),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 32,
                width: 56,
                child: SvgPicture.asset('assets/icons/${widget.iconFlag}.svg'),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: VerticalDividerWidget(),
              ),
              Text(
                widget.lang,
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'Gilroy',
                ),
              ),
            ],
          ),
          Radio(
              value: widget.value,
              groupValue: widget.groupValue,
              onChanged: (int? value) {
                setState(() {
                  widget.groupValue = value!;
                });
              }),
        ],
      ),
    );
  }
}
