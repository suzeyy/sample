import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget buildIconContainer(String imagePath, String text, Color boxColor) {
  return Container(
    height: 100,
    width: 100,
    decoration: BoxDecoration(
      color: boxColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          imagePath,
          height: 30,
          width: 30,
          color: Colors.white,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ],
    ),
  );
}