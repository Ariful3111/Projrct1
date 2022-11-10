import 'package:course_project_1/views/web view.dart';
import 'package:course_project_1/views/mobile view.dart';
import 'package:course_project_1/views/record_answer.dart';
import 'package:flutter/material.dart';
import 'package:course_project_1/responsive/responsive.dart';
import 'package:course_project_1/responsive/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (context, constrains){
            if(constrains.maxWidth<600){
              return Mobile();
            }else{
              return Web();
            }
          }
      ),
    );
  }
}






// import 'package:course_project_1/responsive/size_config.dart';
// import 'package:course_project_1/routes/routes.dart';
// import 'package:course_project_1/views/record_answer.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:course_project_1/responsive/responsive.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   List<String> _question = [
//     "how did you know",
//         "did you",
//         "are you",
//         "what is"
//   ];
//   int index=0;
//
//   @override
//   Widget build(BuildContext context) {
//     int _size=_question.length;
//     void _nextQuestion(){
//
//         setState(() {
//           _question[index++];
//
//         });
//
//     }
//
//     while(index>_size){
//       break;
//     }
//     SizeConfig().init(context);
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: 100.h,
//                     //SizeConfig.screenHeight!/5,
//                     width: 100,
//                     child: Image.asset(
//                       ('asset/logo/28755812_christmas_2012_new_6518.jpg'),
//                       height: 20.h,
//                       width: 20,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: InkWell(
//                     onTap: () {
//                       Get.toNamed(recordanswer);
//                     },
//                     child: Container(
//                       height: 30.h,
//                       width: 150,
//                       decoration: BoxDecoration(
//                         border: Border.all(width: 2, color: Colors.teal),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Center(
//                         child: Text(
//                           ('Record their answer'),
//                           style: TextStyle(
//                             color: Colors.teal,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 150.h,
//               width: 200.w,
//             ),
//             Expanded(
//               child: Text(
//                 ('Grow closer to your love ones \n by asking them this question'),
//                 style: TextStyle(
//                   color: Colors.teal,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               height: 100.h,
//               width: 300,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.2), //color of shadow
//                     spreadRadius: 0.5, //spread radius
//                     blurRadius: 0.5, // blur radius
//                     offset: Offset(0, 0),
//                   ),
//                 ],
//               ),
//               child: Center(
//                 child: Text(_question[index]),
//               ),
//             ),
//             SizedBox(
//               height: 25.h,
//             ),
//             Expanded(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextButton(
//                     style: ButtonStyle(
//                       backgroundColor:
//                           MaterialStatePropertyAll<Color>(Colors.teal),
//                     ),
//                     onPressed: () {},
//                     child: Text(
//                       ('Copy this question'),
//                       style: TextStyle(
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: 20,
//                   ),
//                   InkWell(
//                     onTap: _nextQuestion,
//                     child: Container(
//                       height: 30,
//                       width: 150,
//                       decoration: BoxDecoration(
//                         border: Border.all(width: 2, color: Colors.teal),
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Center(
//                         child: Text(
//                           ('Try another one'),
//                           style: TextStyle(
//                             color: Colors.teal,
//                           ),
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
