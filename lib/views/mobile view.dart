import 'package:course_project_1/responsive/size_config.dart';
import 'package:course_project_1/routes/routes.dart';
import 'package:course_project_1/styles/app%20color.dart';
import 'package:course_project_1/views/record_answer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:course_project_1/responsive/responsive.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:course_project_1/theme/app_theme.dart';
import 'package:course_project_1/styles/app string.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:course_project_1/styles/elevatedbutton.dart';
import 'package:course_project_1/styles/outlinebutton.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  int index = 0;
  var _mygrupe = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    void _nextQuestion() {
      setState(() {
        AppString.cardText[index++];
        if (index == AppString.cardText.length) {
          Fluttertoast.showToast(
              msg: 'List Finished', webPosition: 'bottom center');
        }
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
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Image.asset(
                      ('asset/logo/28755812_christmas_2012_new_6518.jpg'),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35.0),
                  child: outlinedButton('Record their answer',
                      width: Get.width*0.4,
                      height: Get.height*0.05,
                    onPress:()=> recordanswer,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
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
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.8,
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
                      color: AppColor.cyan
                  ),
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
                elevatedButton('Copy this question',
                    onPress: () {  },
                    height: Get.height*0.1,
                    width: Get.width*0.1,
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),

                outlinedButton(
                  'Try another one',
                  iconData: Icons.compare_arrows,
                  height: Get.height*0.05,
                  width: Get.width * 0.5,
                  onPress: _nextQuestion,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
