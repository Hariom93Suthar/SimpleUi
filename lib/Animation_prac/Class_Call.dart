import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
class Class_call{
  static Color(String text,dynamic color1,dynamic color2,dynamic color3) {
    return GradientText(
        text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        colors: [
          color1,
          color2,
          color3
        ]);
  }
    static Color1(String text,dynamic color1,dynamic color2,dynamic color3,dynamic color4){
      return GradientText(
          text,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),
          colors: [
            color1,
            color2,
            color3,
            color4
          ]);
  }
  static Form(var text,String LableT,bool hide,) {
    return TextFormField(
        controller: text,
        obscureText: hide,
        decoration: InputDecoration(
            labelText: LableT,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)
            ),
        )
    );
  }
}