// import 'dart:convert';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_state_manager/src/simple/get_state.dart';
//
// import '../../../controller/MainController/controllerpatient.dart';
// import '../../../core/constant/color.dart';
// import '../../../data/datasource/static.dart';
// import '../../screen/Doctor/DoctorsInfo.dart';
//
// // class ListBuilderDoctor extends StatelessWidget {
// //   ListBuilderDoctor({Key? key, required this.name, required this.namedept})
// //       : super(key: key);
// //   String name;
// //   String namedept;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return GetBuilder<MainController>(builder: (Controller) {
// //       return InkWell(onTap: (){Get.to(DoctorsInfo());},
// //         child: Container(
// //           margin: EdgeInsets.symmetric(horizontal: 30),
// //           decoration: BoxDecoration(
// //               color: ColorApp.purple40, borderRadius: BorderRadius.circular(20)),
// //           padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
// //           child: Row(
// //             children: <Widget>[
// //
// //               Container(
// //                   padding: EdgeInsets.symmetric(horizontal: 15, vertical: 9),
// //                   decoration: BoxDecoration(
// //                       color: ColorApp.nexpurple,
// //                       borderRadius: BorderRadius.circular(13)),
// //                   child: Icon(
// //                     Icons.phone,
// //                     color: ColorApp.white,
// //                   )),
// //               SizedBox(width: 100),
// //               // Spacer(),
// //               Image.asset(doctorlist[4].UrlImage!, height: 50,),
// //               SizedBox(width: 17,),
// //               SizedBox(width: 20),
// //               Column(
// //                 crossAxisAlignment: CrossAxisAlignment.end,
// //                 children: <Widget>[
// //                   Text(
// //                     name,
// //                     textAlign: TextAlign.end,
// //                     style: TextStyle(color: ColorApp.nexpurple, fontSize: 19),
// //                   ),
// //                   SizedBox(
// //                     height: 2,
// //                   ),
// //                   Text(
// //                     namedept,
// //                     style: TextStyle(fontSize: 15),
// //                   )
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),
// //       );
// //     });
// //   }
// // }
// class ListBuilderDoctor extends StatelessWidget {
//   ListBuilderDoctor({Key? key, required this.name, required this.namedept})
//       : super(key: key);
//   String name;
//   String namedept;
//
//   //  Image.asset(doctorlist[4].UrlImage!, height: 50,),
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<MainController>(
//       builder: (Controller) {
//         return ListView.builder(
//           itemBuilder: (context,index)=>
//
//         );
//       }
//     );
//   }
// }
