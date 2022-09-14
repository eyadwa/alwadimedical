// import 'dart:convert';
// // import 'package:centerm/controller/controllerpatient/controllerpatient.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:get/get.dart';
// import '../../../controller/MainController/controllerpatient.dart';
// import '../../screen/patient/usernamepage.dart';
//
//
// class buildHeader extends StatefulWidget {
//   const buildHeader({Key? key, required Future? Function() onClick}) : super(key: key);
//
//   @override
//   _buildHeader createState() => _buildHeader();
// }
//
// class _buildHeader extends State<buildHeader> {
//
//
//   final MainController _controllerput_patient = Get.put(MainController());
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Get.to(UserPage());
//       },
//       child:  Container(
//           decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
//           padding: EdgeInsets.symmetric(vertical: 40),
//           child: Padding(
//             padding: EdgeInsets.all(10),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CircleAvatar(
//                   child: ClipRRect(
//                     child: Image.asset("assets/image/userphoto.png"),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   radius: 50,
//                 ),
//                 const SizedBox(width: 20),
//                 Column(
//                   children: [
//                     SizedBox(height: 50),
//                     Text(_controllerput_patient.patientlist[0].patientName!,
//
//                       style: TextStyle(
//                           fontSize: 25,
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(height: 20),
//                     GetBuilder <MainController>(
//                           init: MainController()
//                       ,builder: (controller)=>
//                        Text(
//                         controller.patientlist[0].patientAddress!,
//                         style: TextStyle(
//                           fontSize: 12,
//                           color: Colors.black,
//                         ),
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//       )
//
//     );
//   }
// }
//
//
// // child: Image.memory(base64Decode(_controllerput_patient.patientlist[0].patientImg!),),
//
// // Container(
// // decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
// // padding: EdgeInsets.symmetric(vertical: 40),
// // child: Padding(
// // padding: EdgeInsets.all(10),
// // child: Row(
// // crossAxisAlignment: CrossAxisAlignment.start,
// // children: [
// // CircleAvatar(
// // child: ClipRRect(
// // child: Image.memory(base64Decode(_controllerput.deptlist[].)),
// // borderRadius: BorderRadius.circular(20),
// // ),
// // radius: 50,
// // ),
// // const SizedBox(width: 20),
// // Column(
// // children: [
// // SizedBox(height: 50),
// // Text(
// // name,
// // style: TextStyle(
// // fontSize: 25,
// // color: Colors.black,
// // fontWeight: FontWeight.bold),
// // ),
// // SizedBox(height: 20),
// // Text(
// // email,
// // style: TextStyle(
// // fontSize: 12,
// // color: Colors.black,
// // ),
// // )
// // ],
// // )
// // ],
// // ),
// // ),
// // ),
import 'dart:convert';
// import 'package:centerm/controller/controllerpatient/controllerpatient.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../../../controller/MainController/controllerpatient.dart';
import '../../screen/patient/usernamepage.dart';


class buildHeader extends StatefulWidget {
  const buildHeader({Key? key, required Future? Function() onClick}) : super(key: key);

  @override
  _buildHeader createState() => _buildHeader();
}

class _buildHeader extends State<buildHeader> {


  final MainController _controllerput_patient = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Get.to(UserPage());
        },
        child:  GetBuilder<MainController>(
          builder: (controller) {
            return Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
              padding: EdgeInsets.symmetric(vertical: 40),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: ClipRRect(
                        child: Image.asset("assets/image/userphoto.png"),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      radius: 50,
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        SizedBox(height: 50),
                        Text("${controller.patientEmptyList[0].patientName}",

                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 1),
                        // GetBuilder <MainController>(
                        //   init: MainController()
                        //   ,builder: (controller)=>
                        //     Text(
                        //      "حمص",
                        //       style: TextStyle(
                        //         fontSize: 15,
                        //         color: Colors.black,
                        //       ),
                        //     ),
                        // )
                      ],
                    )
                  ],
                ),
              ),
            );
          }
        )

    );
  }
}


// child: Image.memory(base64Decode(_controllerput_patient.patientlist[0].patientImg!),),

// Container(
// decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
// padding: EdgeInsets.symmetric(vertical: 40),
// child: Padding(
// padding: EdgeInsets.all(10),
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// CircleAvatar(
// child: ClipRRect(
// child: Image.memory(base64Decode(_controllerput.deptlist[].)),
// borderRadius: BorderRadius.circular(20),
// ),
// radius: 50,
// ),
// const SizedBox(width: 20),
// Column(
// children: [
// SizedBox(height: 50),
// Text(
// name,
// style: TextStyle(
// fontSize: 25,
// color: Colors.black,
// fontWeight: FontWeight.bold),
// ),
// SizedBox(height: 20),
// Text(
// email,
// style: TextStyle(
// fontSize: 12,
// color: Colors.black,
// ),
// )
// ],
// )
// ],
// ),
// ),
// ),