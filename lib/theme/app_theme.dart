import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{

  ThemeData lightTheme(context)=> ThemeData(
    brightness: Brightness.light,
    iconTheme: IconThemeData(
      color: Colors.tealAccent,
      size: 22.w,
    ),
    colorScheme: ColorScheme.light(),
    primarySwatch: Colors.teal,
    textTheme: GoogleFonts.poppinsTextTheme(
      Theme.of(context).textTheme.apply(),
    ),
    scaffoldBackgroundColor: Color(0xFFD4E6F1),
  );

  ThemeData darkTheme(context) => ThemeData(
    iconTheme: IconThemeData(
      color: Colors.white,
      size: 22.w,
    ),
    colorScheme: ColorScheme.dark(),
    primarySwatch: Colors.teal,
    textTheme: GoogleFonts.actorTextTheme(
      Theme.of(context).textTheme.apply(),
    ),
    scaffoldBackgroundColor: Colors.black26,
  );
}