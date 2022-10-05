import 'dart:convert';
import 'package:centerm/controller/MainController/controllerpatient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../core/constant/color.dart';
import 'DoctorsInfo.dart';

class DoctorsSp extends StatelessWidget {
  DoctorsSp({Key? key}) : super(key: key);
  TextEditingController? _searchController;

  MainController _controller = Get.find();
  ScrollController scrolleController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<MainController>(
      builder: (controller) => Container(
              height: double.infinity,
              width: double.infinity,
              // color: ColorApp.white,
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/image/splashfirst.png",
                        height: 50,
                        width: 50,
                      ),
                      SizedBox(width: 5),
                      Text("مركز الوادي الطبي",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 1),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 1),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      controller: _searchController,
                      decoration: InputDecoration(
                        hintText: "ابحث عن الطبيب الخاص بك",
                        hintStyle: TextStyle(fontSize: 15),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                        enabled: false,
                        // label: Container(
                        //     margin: EdgeInsets.symmetric(horizontal: 9),
                        //     child: Text(
                        //       "بحث",
                        //       style: TextStyle(fontSize: 40, color: ColorApp.nexpurple),
                        //     )),
                        suffixIcon: Icon(
                          Icons.search_rounded,
                          color: ColorApp.nexpurple,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                     GetBuilder<MainController>(builder: (controller) =>  controller.isLoadingDoctor
                         ? Center(child: CircularProgressIndicator())
                         :Container(
                       width: 200,
                       height: 800,
                       padding: EdgeInsets.all(10),
                       margin:
                       EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                       child:
                       ListView.builder(
                           controller: scrolleController,
                           itemCount: controller.DoctorlistApi.length,
                           itemBuilder: (context, index) {
                             return InkWell(
                               onTap: () {
                                 Get.to(DoctorsInfo(index));
                                 var datenow = DateTime.now();
                                 var d = DateFormat('yyyy-MM-dd').format(datenow);
                                 //    controller.ListAppointDoctorApi(d.toString(),"${controller.DoctorlistApi[index].doctorId!}");
                               },
                               child: Container(
                                 width: 200,
                                 height: 275,
                                 padding: EdgeInsets.all(10),
                                 margin: EdgeInsets.symmetric(
                                     vertical: 10, horizontal: 5),
                                 child: Container(
                                   height: 75,
                                   width:150,
                                   padding: EdgeInsets.symmetric(
                                       horizontal: 20, vertical: 10),
                                   decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(50),
                                     color: ColorApp.white,
                                     boxShadow: [
                                       BoxShadow(
                                         color: Colors.black26,
                                         spreadRadius: 10,
                                         blurRadius: 1,
                                         offset: Offset(0,
                                             5), // changes position of shadow
                                       ),
                                     ],
                                   ),
                                   child: Column(
                                     crossAxisAlignment:
                                     CrossAxisAlignment.center,
                                     children: [
                                       ClipRRect(
                                         borderRadius: BorderRadius.only(
                                             topRight: Radius.circular(60),
                                             topLeft: Radius.circular(60),
                                             bottomRight: Radius.circular(100),
                                             bottomLeft: Radius.circular(100)),
                                         child: Image.memory(
                                           base64Decode(controller
                                               .DoctorlistApi[index]
                                               .doctorImg!),
                                           width: 200,
                                         ),
                                       ),
                                       Column(
                                         children: [
                                           Text(
                                             " د." +
                                                 " " +
                                                 controller
                                                     .DoctorlistApi[index]
                                                     .doctorName!,
                                             style: TextStyle(
                                                 fontSize: 30,
                                                 fontWeight: FontWeight.bold),
                                           ),
                                           SizedBox(height: 3),
                                           Text(
                                               "${controller.DoctorlistApi[index].doctorCertificate}",
                                               style: TextStyle(
                                                   fontSize: 20,
                                                   fontWeight:
                                                   FontWeight.w100)),
                                         ],
                                       ),
                                     ],
                                   ),
                                 ),
                               ),
                             );
                           }),
                     )



             ),


                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Image.asset(
                  //       "assets/image/splashfirst.png",
                  //       height: 50,
                  //       width: 50,
                  //     ),
                  //     SizedBox(width: 5),
                  //     Text("مركز الوادي الطبي",
                  //         style: TextStyle(
                  //             fontWeight: FontWeight.bold, fontSize: 18)),
                  //   ],
                  // ),
                ],
              ),
            ),
    ));
  }
}
