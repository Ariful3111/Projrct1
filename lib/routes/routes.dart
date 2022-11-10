import 'package:course_project_1/home_screen.dart';
import 'package:course_project_1/views/record_answer.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:flutter/material.dart';

String recordanswer = "/Record-Answer";
String appbutton = "/App-Button";
String responsive = "/Responsive";
String apptheme = "/App-Theme";

List<GetPage> getpages = [
  GetPage(name: "/Record-Answer", page: () => RecordAnswer()),
];
