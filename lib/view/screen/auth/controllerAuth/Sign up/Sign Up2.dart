import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/constant/color.dart';
import '../../../../../data/model/patietmmmm.dart';
import 'Sign up.dart';
import '../../loginSuccess.dart';
import '../PostDataPatient.dart';

class Signuptow extends StatefulWidget {
   Signuptow({Key? key,required this.password,required this.name}) : super(key: key);
String password;
String name;
  @override
  _SignuptowState createState() => _SignuptowState();
}

class _SignuptowState extends State<Signuptow> {
  @override
  final TextEditingController? phone_mycontroller = TextEditingController();
  final TextEditingController? address_mycontroller = TextEditingController();
  final TextEditingController? age_mycontroller = TextEditingController();

  final items = ['حمص', 'حماه', 'طرطوس', 'اللاذقية', 'دمشق'];
  String _valueDrop="حمص";
  int? _redioGroupValue;
  String _redioValue = 'ذكر';
  var _groupValue;

  final formKeyTow = GlobalKey<FormState>();
  Addpatient? _patient;
  bool ispasswordVisablitiy = true;
  bool _conf_ispasswordVisablitiy = true;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "تسجيل الحساب",
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
          key: formKeyTow,
          child: ListView(children: [
            Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "اهلا بك",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    "تسجيل حساب جديد في مركز الوادي الطبي",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  validator: (val) {
                    val = phone_mycontroller!.text;
                    if (val.length < 7) {
                      return 'عدد الارقام اقل من سبعة ارقام';
                    } else
                      return null;
                  },
                  controller: phone_mycontroller,
                  decoration: InputDecoration(
                      hintText: "ادخل رقم هاتفك",
                      hintStyle: TextStyle(fontSize: 15),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                      label: Container(
                          margin: EdgeInsets.symmetric(horizontal: 9),
                          child: Text("رقم الهاتف")),
                      suffixIcon: phone_mycontroller!.text.isEmpty
                          ? IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            phone_mycontroller!.clear();
                          })
                          : Container(width: 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                ),
                SizedBox(height: 10),
                TextFormField(
                  validator: (val) {
                    val = age_mycontroller!.text;
                    if (val == null) {
                      return "الرجاء ادخال العمر";
                    } else
                      return null;
                  },
                  // onChanged: (value)=> (
                  // {}
                  // ),
                  controller: age_mycontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: "ادخل العمر",
                      hintStyle: TextStyle(fontSize: 15),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                      label: Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: Text("العمر")),
                      suffixIcon: age_mycontroller!.text.isEmpty
                          ? IconButton(
                              icon: Icon(Icons.close),
                              onPressed: () {
                                age_mycontroller!.clear();
                              })
                          : Container(width: 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                ),
                SizedBox(height: 10),
                TextFormField(
                  // onChanged: (value)=> (),
                  validator: (val) {
                    val = address_mycontroller!.text;
                    if (val.length <= 8) {
                      return 'يجب ادخل اكثر من 8 ا';
                    } else
                      return null;
                  },
                  controller: address_mycontroller,
                  decoration: InputDecoration(
                      hintText: "ادخل عنوان منزلك",
                      hintStyle: TextStyle(fontSize: 15),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                      label: Container(
                          margin: EdgeInsets.symmetric(horizontal: 9),
                          child: Text("العنوان")),
                      suffixIcon: address_mycontroller!.text.isEmpty
                          ? IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            address_mycontroller!.clear();
                          }):Container(width: 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      )),
                ),
                SizedBox(height: 15),
                Container(
                  width: 150,
                  // padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    color: ColorApp.purple40,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(width: 1),
                  ),
                  child: DropdownButton<String>(
                    value: _valueDrop,
                    iconSize: 36,
                    icon: Icon(Icons.arrow_drop_down),
                    isExpanded: true,
                    items: const [
                      DropdownMenuItem(
                        child: Center(
                          child: Text(
                            "حمص",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        value: "حمص",
                      ),
                      DropdownMenuItem(
                        child: Center(
                          child: Text(
                            "دمشق",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        value: "دمشق",
                      ),
                      DropdownMenuItem(
                        child: Center(
                          child: Text(
                            "طرطوس",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        value: "طرطوس",
                      ),
                      DropdownMenuItem(
                        child: Center(
                          child: Text(
                            "اللاذقية",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        value: "اللاذقية",
                      ),
                      DropdownMenuItem(
                        child: Center(
                          child: Text(
                            "حماه",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        value: "حماه",
                      ),
                      DropdownMenuItem(
                        child: Center(
                          child: Text(
                            "حلب",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        value: "حلب",
                      ),
                    ],
                    onChanged: (value) => setState(() => this._valueDrop = value!),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 170,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: ColorApp.purple40),
                  margin: EdgeInsets.all(0.1),
                  padding: EdgeInsets.only(left: 10, right: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: RadioListTile(
                              value: 'ذكر',
                              groupValue: _groupValue,
                              onChanged: (val) {
                                setState(() {
                                  this._redioValue = val as String;
                                  print(_redioValue);
                                });
                              },
                              activeColor: Colors.red,
                              selected: false,
                            ),
                          ),
                          Text('ذكر',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                        ],
                      ),
  Container(width: 200,height: 2,color: ColorApp.nexpurple,),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: RadioListTile(
                              value: 'انثى',
                              groupValue: _groupValue,
                              onChanged: (val) {
                                setState(() {
                                  this._redioValue = val as String;
                                  print(_redioValue);
                                });
                              },
                            ),
                          ),
                          Text(
                            'انثى',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),

                    ],

                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      child: Text(
                        "تسجيل الحساب",
                        style: TextStyle(color: ColorApp.purple38),
                      ),
                      onPressed: () async {

                        if (formKeyTow.currentState!.validate()) {
                          String name = widget.password;
                          String password =widget.password;
                          int phone = int.parse(phone_mycontroller!.text);
                          String addrsess = address_mycontroller!.text;
                          int age = int.parse(age_mycontroller!.text);
                          String Gender =_redioValue;
                          String _location = _valueDrop;
                          final patiet = await getDataPatient(name, phone, addrsess,
                              password, age, Gender, _location);
                          // _patient = patiet;
                          // getDataPatient(
                          //     name, phone, addrsess, password, age, Gender,_location);

                       Get.to(LoginSuccess());

                        } else {
                          print("the form contain error");
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
