import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../responsive/size_config.dart';
import '../routes/routes.dart';
import '../styles/app color.dart';
import '../styles/app string.dart';
import '../styles/elevatedbutton.dart';
import '../styles/outlinebutton.dart';

class Web extends StatefulWidget {
  const Web({Key? key}) : super(key: key);

  @override
  State<Web> createState() => _WebState();
}

class _WebState extends State<Web> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    void _nextQuestion() {
      setState(() {
        AppString.cardText[index++];
      });
    }

    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Image.asset(
                      ('asset/logo/28755812_christmas_2012_new_6518.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, right: 30),
                  child: outlinedButton(
                    'Record their answer',
                    width: Get.width * 0.2,
                    height: Get.height * 0.05,
                    onPress: () => recordanswer,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.170,
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Text(
              ('Grow closer to your love ones \n by asking them this question'),
              style: TextStyle(
                color: AppColor.cyan,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.17,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), //color of shadow
                    spreadRadius: 0.5, //spread radius
                    blurRadius: 0.5, // blur radius
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Center(
                child: AutoSizeText(
                  AppString.cardText[index],
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.cyan),
                  maxFontSize: 40,
                  maxLines: 3,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    elevatedButton('Copy this question',
                        onPress: () {},
                        width: Get.width * 0.250,
                        height: Get.height*0.05
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.02,
                    ),
                    outlinedButton(
                      'Try another one',
                      iconData: Icons.compare_arrows,
                      height: Get.height*0.05,
                      width: Get.width * 0.250,
                      onPress: _nextQuestion,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
