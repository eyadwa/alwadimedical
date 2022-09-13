import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';

import '../../../controller/MainController/controllerpatient.dart';

// import '../../../controller/controllerpatient/Remote_Services_patient.dart';
// import '../../../controller/controllerpatient/controllerpatient.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/const.dart';
import '../../../data/model/model patient.dart';

class UserPagegetx extends StatefulWidget {
  const UserPagegetx({
    Key? key,
  }) : super(key: key);

  @override
  _UserPage createState() => _UserPage();
}

class _UserPage extends State<UserPagegetx> {
  //final patientController _controllerput_patientt = Get.put(patientController());
  final MainController _controllerput = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: ColorApp.white,
          height: double.infinity,
          width: double.infinity,
          // decoration: BoxDecoration(border: Border(bottom: BorderSide() )),
          child: ListView(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: ColorApp.purple40,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("My Profile",
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 30)),
                    ),
                    Center(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("photo"),
                            Icon(Icons.photo_camera),
                          ],
                        ),
                        alignment: Alignment.center,
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150),
                            border: Border.all(width: 3, color: ColorApp.white)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${_controllerput.spacilist[0].specializationName}",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),
              Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("الاسم", textAlign: TextAlign.right),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GetBuilder(builder: (Con)=>
                  Text(
                        "${_controllerput.spacilist[0].specializationName} ",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,textBaseline: TextBaseline.alphabetic),
    )

                  ),
                ),
                const Divider(color: Colors.black, height: 10),

              ])
            ],
          ),
        ));
  }
}
// Container(
//   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//   child: Text(
//       "${_controllerput_patient.patientlist[0].patientName} الاسم:"),
//   width: double.infinity,
//   height: 40,
//   alignment: Alignment.center,
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(30), color: ColorApp.gery),
// ),
// Container(
//   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//   child: Text(
//       "${_controllerput_patient.patientlist[0].patientPhone}رقم الهاتف:"),
//   width: double.infinity,
//   height: 40,
//   alignment: Alignment.center,
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(30), color: ColorApp.gery),
// ),
// Container(
//   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//   child: Text(
//       "${_controllerput_patient.patientlist[0].patientAddress}العنوان:"),
//   width: double.infinity,
//   height: 40,
//   alignment: Alignment.center,
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(30), color: ColorApp.gery),
// ),
// Container(
//   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//   child: Text(
//       "${_controllerput_patient.patientlist[0].patientAge}العمر:"),
//   width: double.infinity,
//   height: 40,
//   alignment: Alignment.center,
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(30), color: ColorApp.gery),
// ),
// Container(
//   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//   child: Text(
//       "${_controllerput_patient.patientlist[0].registrationDate} Date Register"),
//   width: double.infinity,
//   height: 40,
//   alignment: Alignment.center,
//   decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(30), color: ColorApp.gery),
// ),
