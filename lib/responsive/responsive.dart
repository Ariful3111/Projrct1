import 'package:flutter/material.dart';
import 'package:course_project_1/views/mobile view.dart';
import 'package:course_project_1/views/web view.dart';

class Responsive extends StatelessWidget {
  final  Mobile;
  final  Web;

  const Responsive({
   required this.Mobile,
    required this.Web
});

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width < 600) {
      return Mobile;
    }
    // Or less then that we called it mobile
    else {
      return Web;
    }
  }
}
