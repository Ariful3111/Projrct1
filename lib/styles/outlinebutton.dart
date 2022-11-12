import 'package:course_project_1/responsive/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app color.dart';


Widget outlinedButton(String title,
    {IconData? iconData,
      required VoidCallback onPress,
      required var width,
      required var height,
    }) {
  return SizedBox(
    height: height,
    width: width,
    child: OutlinedButton(
      onPressed: onPress,
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: AppColor.cyan,
            ),
            Text(
              title,
              style: TextStyle(color: AppColor.cyan),
            ),
          ],
        ),
      ),
      style: OutlinedButton.styleFrom(
        side: const BorderSide(width: 2.5, color: AppColor.cyan),
        shape: StadiumBorder(),
      ),
    ),
  );
}