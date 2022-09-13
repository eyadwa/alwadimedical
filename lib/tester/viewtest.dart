import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/MainController/controllerpatient.dart';
import '../core/constant/color.dart';

class test extends StatelessWidget {
  test({Key? key}) : super(key: key);

  final MainController _controllerput_patient = Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _controllerput_patient.patientlist.length,
        itemBuilder: (context, index) {
          print(
            _controllerput_patient.patientlist.length,
          );
          print(_controllerput_patient.patientlist[index].patientName);
          return Padding(
            padding: const EdgeInsets.all(0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: ColorApp.purple38,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "${_controllerput_patient.patientlist[index].patientName}",
                    style: TextStyle(color: ColorApp.white),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
//  ListView.builder(
// //   scrollDirection: Axis.vertical,
//    itemCount: _controllerput.deptlist.length,
//    itemBuilder: (context, index) {
//      return
//
//        GestureDetector(
//          onTap: () {},
//          child: Container(
//            alignment: Alignment.center,
//            padding: EdgeInsets.symmetric(horizontal: 10),
//            margin: EdgeInsets.only(left: 1),
//            height: 30,
//            width: 80,
//            decoration: BoxDecoration(
//                color: ColorApp.purple38,
//                borderRadius: BorderRadius.circular(30)),
//            child: Text(
//            "4",
//              style: TextStyle(color: ColorApp.white),
//            ),
//          ),
//        );
//
//
//
//    },
//  ),
