import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app color.dart';

Widget elevatedButton(String title,
{IconData? iconData,
    required VoidCallback onPress,
    required var width,
    required var height,
}
    ) {

  return SizedBox(
    height: height,
    width: width,
    child: ElevatedButton(
        onHover: (Value) {},
        style: ElevatedButton.styleFrom(
            shape: StadiumBorder(), backgroundColor: AppColor.cyan),
        onPressed: () {},
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.copy_sharp),
              Text(title),
            ],
          ),
        )),
  );
}