import 'package:flutter/cupertino.dart';

import 'color.dart';
import 'package:http/http.dart'as http;
const String namecenter="مركز الوادي الطبي";
const BoxDecoration appbarthem=   BoxDecoration(gradient: LinearGradient(colors: [ColorApp.red, ColorApp.purpleAccent], end: Alignment.centerLeft, begin: Alignment.centerRight,),);


const String Url_BASE='http://ayaarnous-001-site1.ftempurl.com';
const String Url_alwadi='https://alwadi-mc.sy';

class MainClint{
  static var client = http.Client();

}


// import 'dart:convert';
// import 'package:centerm/controller/MainController/controllerpatient.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../core/constant/color.dart';
// import 'DoctorsInfo.dart';
//
//
//
// class DoctorsSp extends StatelessWidget {
//  DoctorsSp({Key? key}) : super(key: key);
//  TextEditingController? _searchController;
//
//  MainController _controller= Get.find();
//
//  @override
//  Widget build(BuildContext context) {
//   return Scaffold(
//       body:GetBuilder<MainController>(builder: (controller)=>
//       controller.isLoadingDoctor?Center(child: CircularProgressIndicator()): Container(
//        height: double.infinity,
//        width: double.infinity,
//        color: ColorApp.white,
//        child: ListView(
//         children: [SizedBox(height: 10),
//          Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 25),
//           child: TextFormField(
//            textAlign: TextAlign.right,
//            controller: _searchController,
//            decoration: InputDecoration(
//             hintText: "ابحث عن الطبيب الخاص بك",
//             hintStyle: TextStyle(fontSize: 15),
//             floatingLabelBehavior: FloatingLabelBehavior.always,
//             contentPadding:
//             EdgeInsets.symmetric(vertical: 5, horizontal: 30),
//             enabled: false,
//             // label: Container(
//             //     margin: EdgeInsets.symmetric(horizontal: 9),
//             //     child: Text(
//             //       "بحث",
//             //       style: TextStyle(fontSize: 40, color: ColorApp.nexpurple),
//             //     )),
//             suffixIcon: Icon(
//              Icons.search_rounded,
//              color: ColorApp.nexpurple,
//             ),
//             border: OutlineInputBorder(
//              borderRadius: BorderRadius.circular(30),
//             ),
//            ),
//           ),
//          ),
//          SizedBox(height: 10),
//          GetBuilder<MainController>(
//              builder: (controller) {
//
//               if (controller.isLoadingspaci==true){
//                return Center(child: CircularProgressIndicator());
//               }
//               else
//               {
//                return
//
//                 Container(
//                  width: 200,
//                  height: 500,
//                  padding: EdgeInsets.all(10),
//                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
//                  child:
//                  ListView.builder(
//                      itemCount: controller.DoctorlistApi.length,
//                      itemBuilder: (context, index) {
//                       return InkWell(
//                        onTap: (){Get.to(DoctorsInfo(index));},
//                        child: Container(
//                         width: 200,
//                         height: 150,
//                         padding: EdgeInsets.all(10),
//                         margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
//
//                         child: Container(
//                          height: 100,
//                          width: 150,
//                          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                          decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(30),
//                           color: ColorApp.grey20,
//                           boxShadow: [
//                            BoxShadow(
//                             color: ColorApp.grey22,
//                             spreadRadius: 15,
//                             blurRadius: 20,
//                             offset: Offset(0, 5), // changes position of shadow
//                            ),
//                           ],
//                          ),
//                          child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//
//                            Row(
//                             children: [
//                              ClipOval(
//                               child: SizedBox.fromSize(
//                                size: Size.fromRadius(38), // Image radius
//                                child: Image.memory(base64Decode(controller.DoctorlistApi[index].doctorImg!),width: 75,height: 75,),
//                               ),
//                              ),
//
//                              Padding(
//                               padding: const EdgeInsets.only(left: 100,top: 10),
//                               child: Column(
//                                children: [
//                                 Text(controller.DoctorlistApi[index].doctorName!),
//                                 Text("${controller.DoctorlistApi[index].doctorCertificate}"),
//
//                                ],
//                               ),
//                              )
//                             ],
//
//                            ),
//                            Text(controller.DoctorlistApi[index].doctorEmail!)
//
//                           ],
//                          ),
//                         ),
//
//                        ),
//                       );
//                      }
//                  ),
//                 );
//               }
//
//              }
//
//          ),
//          Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//            Image.asset(
//             "assets/image/splashfirst.png",
//             height: 50,
//             width: 50,
//            ),
//            SizedBox(width: 5),
//            Text("مركز الوادي الطبي",
//                style:
//                TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//           ],
//          ),
//         ],
//        ),
//       ),)
//   );
//  }
// }