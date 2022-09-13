import 'package:centerm/core/constant/color.dart';
import 'package:centerm/data/model/patietmmmm.dart';
import 'package:centerm/view/screen/auth/controllerAuth/PostDataPatient.dart';
import 'package:centerm/view/screen/home.dart';
import 'package:centerm/view/widget/Auth/customtextformauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Sign Up2.dart';
import '../../loginSuccess.dart';

class SignUp extends StatefulWidget {
   SignUp({Key? key}) : super(key: key);

  @override
  _SignUp createState() => _SignUp();
}

class _SignUp extends State<SignUp> {
  var gender;

  // final TextEditingController eyadtest = TextEditingController();
  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController? phone_mycontroller = TextEditingController();
  final TextEditingController? address_mycontroller = TextEditingController();
  final TextEditingController? password_mycontroller = TextEditingController();
  final TextEditingController? configure_password_mycontroller =
      TextEditingController();
  final TextEditingController? age_mycontroller = TextEditingController();
  final TextEditingController? Gender_mycontroller = TextEditingController();
  final TextEditingController? Location_mycontroller = TextEditingController();
  final formKey = GlobalKey<FormState>();
  Addpatient? _patient;
  bool ispasswordVisablitiy = true;
  bool _conf_ispasswordVisablitiy = true;

  String? _savepassword;
  @override
  Widget build(BuildContext context) {
    namecontroller.addListener(() => setState(() {}));

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
        child: Form(
          key: formKey,
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
              Image.asset("assets/image/splashtow.png",height: 75,width: 100,),
              SizedBox(height: 20),
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
              const SizedBox(height: 50),
              TextFormField(
                validator: (val) {
                  val = namecontroller.text;
                  if (val.length < 2) {
                    return "الرجاء ادخال اسم صحيح ";
                  }
                  return null;
                },
                controller: namecontroller,
                decoration: InputDecoration(
                  hintText: " الرجاء ادخال اسم المستخدم",
                  hintStyle: TextStyle(fontSize: 15),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  label: Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Text("اسم المستخدم ")),
                  suffixIcon: namecontroller.text.isEmpty
                      ? Container(
                          width: 0,
                        )
                      : IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            namecontroller.clear();
                          }),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ), //name
              SizedBox(height: 20),
              TextFormField(

                validator: (val) {
                  val = password_mycontroller!.text;

                  if (val == null) {
                    return 'الرجاء ادخال كلمة السر';
                  } else {


                    print(password_mycontroller!.text);

                    return null;
                  }
                },
                controller: password_mycontroller,
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
              SizedBox(height: 20),
              TextFormField(
                validator: (val) {
                  val = configure_password_mycontroller!.text;
                  print("${password_mycontroller!.text}");
                  if (val != password_mycontroller!.text) {

                    return " كلمة السر غير متطابقة";
                  } else
                    null;
                },
                controller: configure_password_mycontroller,
                obscureText: _conf_ispasswordVisablitiy,
                decoration: InputDecoration(
                    hintText: "الرجاء تأكيد كلمة السر",
                    hintStyle: TextStyle(fontSize: 15),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    label: Container(
                        margin: EdgeInsets.symmetric(horizontal: 9),
                        child: Text("تأكيد كلمة السر")),
                    suffixIcon: IconButton(
                        icon: !_conf_ispasswordVisablitiy
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _conf_ispasswordVisablitiy =
                                !_conf_ispasswordVisablitiy;
                          });
                        }),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),
              SizedBox(height: 10),
              // TextFormField(
              //   // onChanged: (value)=> (),
              //   controller: password_mycontroller,
              //   decoration: InputDecoration(
              //       hintText: "Enter you Password",
              //       hintStyle: TextStyle(fontSize: 15),
              //       floatingLabelBehavior: FloatingLabelBehavior.always,
              //       contentPadding:
              //           EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              //       label: Container(
              //           margin: EdgeInsets.symmetric(horizontal: 9),
              //           child: Text("password")),
              //       suffixIcon: Icon(Icons.add),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(30),
              //       )),
              // ),

              // Column(
              //   children: [
              //     RadioListTile(
              //       title: Text("Male"),
              //       value: "male",
              //       groupValue: gender,
              //       onChanged: (value){
              //         setState(() {
              //           gender = value.toString();
              //         });
              //       },
              //     ),
              //
              //     RadioListTile(
              //       title: Text("Female"),
              //       value: "female",
              //       groupValue: gender,
              //       onChanged: (value){
              //         setState(() {
              //           gender = value.toString();
              //         });
              //       },
              //     ),
              //
              //   ],
              // ),
              // _patient==null ? Container(width: 0)
              // :Text("the patient is ${_patient!.patientName}"),
              MaterialButton(
                child: Text(
                  "تسجيل",
                  style: TextStyle(color: ColorApp.nexpurple,fontWeight: FontWeight.bold,fontSize: 20),
                ),
                onPressed: () async {
                  // Get.to(home());
                  if (formKey.currentState!.validate()) {
                   Get.to( Signuptow(
                        name: namecontroller.text,
                        password: password_mycontroller!.text));
                  } else {
                    print("the form contain error");
                  }
                },
              ),
              // Container(
              //   margin: EdgeInsets.all(1),
              //   width: 100,
              //   height: 50,
              //   decoration: BoxDecoration(
              //     color: Colors.purple,
              //     borderRadius: BorderRadius.circular(50),
              //   ),
              //   child: TextButton(
              //     onPressed: () {
              //       Get.to(LoginSuccess());
              //     },
              //     child: Text(
              //       "Continue",
              //       style: TextStyle(color: Colors.black),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
