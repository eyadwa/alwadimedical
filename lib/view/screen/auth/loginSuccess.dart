import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/color.dart';
import '../home.dart';
import 'controllerAuth/Sign up/Sign up.dart';

class LoginSuccess extends StatelessWidget {
  const LoginSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          " login Successful",
          style: TextStyle(fontSize: 25, color:ColorApp.nexpurple),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Icon(
                Icons.favorite,
                color: Colors.white,size: 150,
              ),
                margin: EdgeInsets.only(top: 100, right: 20, left: 20, bottom: 70),

              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color:  ColorApp.nexpurple,
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
            ),
            Text(
              "Login Success",
              style: TextStyle(
                  fontSize: 50, fontWeight: FontWeight.bold, color: Colors.black38),
            ),
            Container(margin: EdgeInsets.only(top: 40),
              width: 300,
              height: 45,
              decoration: BoxDecoration(
                color:  ColorApp.nexpurple,
                borderRadius: BorderRadius.circular(50),
              ),
              child: TextButton(
                onPressed: () {
                  Get.to(home());
                },
                child: Text(
                  "Continue",style:TextStyle(color: Colors.white),
                  // style: TextStyle(color: Colors.white),
                ),

              ),
            ),
            Container(margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account ?",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(SignUp());
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(color: ColorApp.nexpurple),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
