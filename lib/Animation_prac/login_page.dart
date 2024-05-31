import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api/Animation_prac/Class_Call.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var name = TextEditingController();
    var email = TextEditingController();
    var password = TextEditingController();
    return SafeArea(
        child: Scaffold(
          body: Stack(
            fit: StackFit.passthrough,
        children: [
          Image.asset("assets/logos/log.gif",
            fit: BoxFit.fitHeight,
            height:MediaQuery.of(context).size.height,
            filterQuality: FilterQuality.high,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(padding: EdgeInsets.only(top: 50,),
              child: Class_call.Color1("Login Page",Colors.lightBlueAccent,Colors.pink,Colors.lightBlueAccent,Colors.red),),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(left: 20,right: 20,top: 200),
                  child: Class_call.Form(name,"Enter Your Name",false),
                ),
                SizedBox(height: 30,),
                Padding(padding: EdgeInsets.only(left: 20,right: 20),
                  child: Class_call.Form(email,"Enter Your Email",false),
                ),
                SizedBox(height: 30,),
                Padding(padding: EdgeInsets.only(left: 20,right: 20),
                  child: Class_call.Form(password,"Enter Your Password",true),
                ),
                SizedBox(height: 90,),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(onPressed: (){

                    }, child: Image.asset("assets/logos/loginicon.gif"),style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.blueAccent),
                        padding: MaterialStateProperty.all(EdgeInsets.only(left: 70,right: 70,top: 20,bottom: 20))
                    ),
                    )
                )
              ],
            ),
          )
        ],
              ),
            ));
  }
}
