import 'package:flutter/material.dart';
import 'package:mango/core/app_colors.dart';

class RestoranPage extends StatefulWidget {
  const RestoranPage({Key? key}) : super(key: key);

  @override
  _RestoranPageState createState() => _RestoranPageState();
}

class _RestoranPageState extends State<RestoranPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.3,
            width: size.width,
            padding: EdgeInsets.only(top: 24),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.orangeLight,
                  AppColors.redOrange,
                ],
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: size.width * 0.16),
                    Text(
                      'Ресторан “Bavariya”',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Text(
                  'Европейская кухня',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Container(
                  height: 1,
                  width: size.width * 0.2,
                  color: Colors.white,
                  margin: const EdgeInsets.only(top: 6, bottom: 6),
                ),
                Text(
                  'Toshkent shahar, Yakkasaroy tumani, ahmad yassaviy ko’chasi, 2',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.white,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
