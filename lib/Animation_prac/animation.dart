import 'dart:async';
import 'package:flutter/material.dart';
import 'package:simple_ui/Animation_prac/login_page.dart';
import 'package:get/get.dart';
class OpenLogin extends StatefulWidget {
  const OpenLogin({Key? key}) : super(key: key);

  @override
  State<OpenLogin> createState() => _OpenLoginState();
}

class _OpenLoginState extends State<OpenLogin> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Get.off(Login());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Image.asset("assets/images/giftbox.gif",
         height: MediaQuery.of(context).size.height,),
    );
  }
}
