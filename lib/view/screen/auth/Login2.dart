import 'package:centerm/controller/MainController/controllerpatient.dart';
import 'package:centerm/view/widget/Auth/customtextformauth.dart';
import 'package:centerm/view/widget/Auth/custonButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import '../../../controller/MainController/RemoteService_login.dart';
import '../home.dart';
import 'controllerAuth/PostDataPatient.dart';
import 'controllerAuth/Sign up/Sign up.dart';




class Login2 extends StatefulWidget{
  @override
  _Login createState() => _Login();

}
class _Login extends State<Login2> {
  final formKeythree = GlobalKey<FormState>();
  final TextEditingController _controlleruser= TextEditingController();
  final TextEditingController _controllerPassword= TextEditingController();
  bool ispasswordVisablitiy  =true;
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
            builder: (Controller) => ListView(
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
                Image.asset("assets/image/splashtow.png",height: 75,width: 100,),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "ادخل اسم المستخد وكلمة السر للقايم بعملية تسجيل الدخول",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 70),
                // CustonTextFromAuth(
                //   hinttext: "ادخل اسم المستخدم",
                //   iconData: Icons.person,
                //   LabelText: "ٍاسم المستخدم",
                // ),
                // const SizedBox(height: 15),
                // CustonTextFromAuth(
                //   hinttext: "الرجاء كتابة كلمة السر",
                //   iconData: Icons.password,
                //   LabelText: "كلمة السر",
                // ),
                // const SizedBox(height: 55),
                // Text(
                //   "هل نسيت كلمة السر",
                //   textAlign: TextAlign.right,
                // ),
                TextFormField(
                  validator: (val) {
                    val = _controlleruser.text;
                    if (val!='eyad') {
                      return "الرجاء ادخال اسم صحيح ";
                    }
                    return null;
                  },
                  controller: _controlleruser,
                  decoration: InputDecoration(
                    hintText: " الرجاء ادخال اسم المستخدم ",
                    hintStyle: TextStyle(fontSize: 15),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    label: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        child: Text("اسم المستخدم ")),
                    suffixIcon: _controlleruser.text.isEmpty
                        ? Container(
                      width: 0,
                    )
                        : IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          _controlleruser.clear();
                        }),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ), //name
                SizedBox(height: 20),
                TextFormField(

                  validator: (val) {
                    val = _controllerPassword.text;

                    if (val != '12345678') {
                      return 'الرجاء ادخال كلمة السر';
                    } else {



                      return null;
                    }
                  },
                  controller: _controllerPassword,
                  obscureText: ispasswordVisablitiy,
                  decoration: InputDecoration(
                      hintText: "ادخل كلمة السر",
                      hintStyle: TextStyle(fontSize: 15),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                      label: Container(
                          margin: EdgeInsets.symmetric(horizontal: 9),
                          child: Text("كلمة السر")),
                      suffixIcon: IconButton(
                          icon: !ispasswordVisablitiy
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              ispasswordVisablitiy = !ispasswordVisablitiy;
                            });
                          }),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                ),
                const SizedBox(height: 10),
                GetBuilder<MainController>(
                  builder: (controller) {
                    return CustonButton(
                        text: "تسجيل الدخول",
                        onPressed: () {
                          getDataLogin ("${_controlleruser.text}","${_controllerPassword.text}");
                        });
                  }
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    InkWell(
                      onTap: () {
                        // deptController().fetcporduct();
                        // patientController().fetcporduct();
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
            )),
      ),
    );
  }
}
