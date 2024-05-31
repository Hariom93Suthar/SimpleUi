import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';
import 'package:simple_ui/Animation_prac/Class_Call.dart';
import 'package:simple_ui/Animation_prac/animation.dart';
class Welcome_page extends StatefulWidget {
  const Welcome_page({Key? key}) : super(key: key);

  @override
  State<Welcome_page> createState() => _Welcome_pageState();
}

class _Welcome_pageState extends State<Welcome_page> {
  List imglist =[
    {"id":1, "imgpath":"assets/logos/Hii.gif"},
    {"id":2, "imgpath": "assets/logos/next.png"}
  ];
  final CarouselController carouselController = CarouselController();
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20,top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Class_call.Color("Welcome",Colors.orange,Colors.blue,Colors.limeAccent),
                     Class_call.Color("User",Colors.black,Colors.blue,Colors.green)
                   ],
                )
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
              autoPlay: true,
                height: 650,
                enlargeCenterPage: true
              ),
              items: imglist.map((i) {
                return Image.asset(
                  i['imgpath'],
                 // height: MediaQuery.of(context).size.height,
                 // width: MediaQuery.of(context).size.width,
                );
              }).toList(),
            ),

          Center(
            child: ElevatedButton(onPressed: (){
            Get.to(OpenLogin());
            }, child: Text("Get Started >>"),style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue),

            ),),
          )
          ],
        ),
    ));
  }
}
