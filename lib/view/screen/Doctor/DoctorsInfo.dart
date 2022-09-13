// import 'package:centerm/controller/controllerpatient/controllerpatient.dart';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import ' AppointmentBooking/AppointmentBooking.dart';
import '../../../controller/MainController/controllerpatient.dart';
import '../../../core/constant/color.dart';
import '../../../data/datasource/static.dart';

class DoctorsInfo extends StatelessWidget {
  @override
  DoctorsInfo(this.index);

  int? index;

  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainController>(
        builder: (controller) => Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorApp.new26 ,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Image.memory(
                        base64Decode(
                            "${controller.DoctorlistApi[index!].doctorImg}"),
                        height: 125,
                        width: 125,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text("${controller.DoctorlistApi[index!].doctorName}",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    ) ,
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("${controller.DoctorlistApi[index!].doctorEmail}"),
                    )
                  ],
                ),
              ),

              SizedBox(height: 20),
              inof("${controller.DoctorlistApi[index!].doctorSpecialization}", "الاختصاص"),
              inof("${controller.DoctorlistApi[index!].doctorAddrress}", "العنوان"),
              inof("${controller.DoctorlistApi[index!].doctorPhone}", "الهاتف"),
              inof("${controller.DoctorlistApi[index!].workExperience}", "خبرة"),

              SizedBox(height: 50),
              Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(Appointment_Booking());
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        padding:
                            EdgeInsets.symmetric(vertical: 24, horizontal: 50),
                        decoration: BoxDecoration(
                            color: ColorApp.new26,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: ColorApp.white,
                                  borderRadius: BorderRadius.circular(16)),
                              // child: Image.asset("assets/list.png")
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Container(
                              width: 75,
                              child: Text(
                                "حجز موعد",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

 inof(String Var_info,String titles)=>  Container(
  width: double.infinity,
  decoration: BoxDecoration( border: Border.all(color: ColorApp.new26)),
  padding: const EdgeInsets.all(8.0),
  margin: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(Var_info,textAlign: TextAlign.start,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
      ,SizedBox(width:50)
      ,Text(titles,textAlign: TextAlign.end,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
    ],
  ),
);














//
// class IconTile extends StatelessWidget {
//   final Color backColor;
//
//   IconTile({required this.backColor});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 16),
//       child: Container(
//         height: 45,
//         width: 45,
//         decoration: BoxDecoration(
//             color: backColor, borderRadius: BorderRadius.circular(15)),
//         // child: Image.asset(
//         //   imgAssetPath,
//         //   width: 20,
//         // ),
//       ),
//     );
//   }
// }
// GetBuilder<MainController>(
// builder: (controller) =>
// Container(
// padding: EdgeInsets.symmetric(horizontal: 24),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.end,
// mainAxisAlignment: MainAxisAlignment.end,
// children: <Widget>[
// Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.end,
// children: <Widget>[
// Container(
// width: MediaQuery.of(context).size.width - 222,
// height: 220,
// child: Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: <Widget>[
// Text(
// "${controller.DoctorlistApi[index!].doctorName}",
// style: TextStyle(fontSize: 32),
// textAlign: TextAlign.end,
// ),
// Text(
// "${controller.DoctorlistApi[index!].doctorSpecialization}",
// style: TextStyle(fontSize: 19, color: Colors.black),
// ),
// SizedBox(height: 40),
//
// ],
// ),
// ),
// Image.memory(base64Decode("${controller.DoctorlistApi[index!].doctorImg}"), height: 100,width: 100,),
// SizedBox(width: 20),
// ],
// ),
// Container(width: 75,height: 1, color: Colors.black),
// SizedBox(
// height: 26,
// ),
// Text(
// "حول",
// style: TextStyle(fontSize: 22),
// ),
// SizedBox(
// height: 10,
// ),
//
// Text(
// " ${controller.DoctorlistApi[index!].doctorCertificate}",
// style: TextStyle(fontSize: 15),
// ),
//
// SizedBox(height: 24),
// Container(width: 150,height: 1, color: Colors.black),
// Row(
// crossAxisAlignment: CrossAxisAlignment.end,
// mainAxisAlignment: MainAxisAlignment.end,
// children: <Widget>[
// Column(
// children: <Widget>[
// Row(
// children: <Widget>[
//
// SizedBox(
// width: 20,
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.end,
// children: <Widget>[
// Text(
// "العنوان",
// textAlign: TextAlign.end,
// style: TextStyle(
// color: Colors.black.withOpacity(0.9),
// fontSize: 20),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// width:
// MediaQuery.of(context).size.width - 268,
// child:
// Text(
// "${controller.DoctorlistApi[index!].doctorAddrress} ",
// textAlign: TextAlign.end,
// style: TextStyle(color: Colors.black),
// )
// )
// ],
// )
// ],
// ),
// SizedBox(
// height: 20,
// ),
// Container(width: 150,height: 1, color: Colors.black),
// Row(
// children: <Widget>[
// //     Image.asset("assets/clock.png"),
// SizedBox(
// width: 20,
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.end,
// children: <Widget>[
// Text(
// "اوقات التواجد",
// textAlign: TextAlign.end,
// style: TextStyle(
// color: Colors.black87.withOpacity(0.9),
// fontSize: 20),
// ),
// SizedBox(
// height: 3,
// ),
// Container(
// width:
// MediaQuery.of(context).size.width - 268,
// child: Text(
// '''الاثنين - الجمعة
//  7 صباحا''',
// textAlign: TextAlign.end,
// style: TextStyle(color: Colors.black),
// )),
// ],
// )
// ],
// )
// ],
// ),
//
// ],
// ),
// Container(width: 150,height: 1, color: Colors.black),
// Text("Activity",
// style: TextStyle(
// color: Color(0xff242424),
// fontSize: 28,
// fontWeight: FontWeight.w600)),
// SizedBox(height: 22),
// Row(
// children: <Widget>[
// Expanded(
// child: InkWell(
// onTap: () {
// Get.to(Appointment_Booking());
// },
// child: Container(margin: EdgeInsets.symmetric(horizontal: 50),
// padding: EdgeInsets.symmetric(vertical: 24, horizontal: 50),
// decoration: BoxDecoration(
// color: ColorApp.grey20,
// borderRadius: BorderRadius.circular(20)),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: <Widget>[
// Container(
// padding: EdgeInsets.all(8),
// decoration: BoxDecoration(
// color: ColorApp.white,
// borderRadius: BorderRadius.circular(16)),
// // child: Image.asset("assets/list.png")
// ),
//
// SizedBox(
// width: 16,
// ),
// Container(
// width: 75,
// child: Text(
// "حجز موعد",
// style: TextStyle(
// color: Colors.white, fontSize: 17),
// ),
// )
// ],
// ),
// ),
// ),
// ),
// ],
// )
// ],
// ),
// ),
// ),
