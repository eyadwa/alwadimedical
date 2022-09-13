import 'package:centerm/controller/MainController/controllerpatient.dart';
import 'package:centerm/core/constant/color.dart';
import 'package:centerm/view/widget/Auth/customtextformauth.dart';
import 'package:centerm/view/widget/Auth/custonButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import '../home.dart';
import 'Login2.dart';
import 'controllerAuth/Sign up/Sign up.dart';


class Login extends StatefulWidget {
  @override
  _Login createState() => _Login();

}

class _Login extends State<Login> {
  final formKeythree = GlobalKey<FormState>();
  final TextEditingController _controllernuber = TextEditingController();
  final TextEditingController _controllercod = TextEditingController();
  bool ispasswordVisablitiy = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "تسجيل الدخول",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(15),
        child: GetBuilder<MainController>(
            builder: (Controller) =>
                Form(
                  key: formKeythree,
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "اهلا بك",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Image.asset(
                        "assets/image/splashtow.png", height: 75, width: 100,),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          "ادخل رقم هاتفك للقيام بعملة تسجيل الدخول",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(height: 70),
                      TextFormField(keyboardType: TextInputType.phone,
                        validator: (val) {
                          val = _controllernuber.text;
                          if (val.length == 10) {
                            return "الارقام المدخلة اقل او اكثر من عشرة ارقام";
                          }
                          return null;
                        },
                        controller: _controllernuber,
                        decoration: InputDecoration(
                          hintText: " 0999888777 ",
                          focusColor: Colors.purple,
                          hoverColor: Colors.purple,
                          fillColor: ColorApp.purple38,
                          hintStyle: TextStyle(fontSize: 15),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                          label: Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: Text("رقم الهاتف ")),
                          suffixIcon:
                          IconButton(
                              icon: Icon(
                                Icons.phone_android, color: ColorApp.purple38,),
                              onPressed: () {
                                _controllernuber.clear();
                              }),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ), //name
                      SizedBox(height: 20),
                      CustonButton(
                        text: "ارسال كود التحقق",
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) =>
                              new AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(30.0))
                                ),
                                content:Container(
                                  width: 100,height: 150,
                                child:Column(crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                  Text("ادخل رمز التحقق",textAlign: TextAlign.end,),
                                  TextFormField(validator:(val){
                                    val=_controllercod.text;
                                    if (val!=0000){
                                      return "الرقم المدخل غير صحيح";
                                    }

                                  }
                                    , controller: _controllercod,
                                  ),SizedBox(height: 2),
                                  CustonButton(onPressed: (){
                                   Get.to(Login2());
                                  },text: "ارسال")
                                ],) ,)
                              )
                          );
                        },

                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "هل تريد تسجيل حساب جديد",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(SignUp());
                            },
                            child: Text(
                              "تسجيل حساب جديد",
                              style: TextStyle(color: Colors.purple),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )),
      ),
    );
  }
}
