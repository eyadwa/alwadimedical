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
  DateTime localDate = DateTime.now();

  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainController>(
        builder: (controller) => Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 5),
                width: double.infinity,
                decoration: BoxDecoration(
                  // color: ColorApp.new26,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: ColorApp.new26,
                      //    spreadRadius: 0.05,
                      blurRadius: 0.5,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(100),
                      bottomLeft: Radius.circular(100)),
                  child: Image.memory(
                    base64Decode(
                        "${controller.DoctorlistApi[index!].doctorImg}"),
                    width: double.infinity,
                  ),
                ),
              ),

              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 90,
                    width: 150,
                    padding:EdgeInsets.all(5),
                    decoration: BoxDecoration(border: Border.all(width: 0.5)),child:   Column(
                    children: [
                      Icon(
                        Icons.monetization_on,
                        color: ColorApp.new26,
                        size: 25,
                      ),
                      SizedBox(height: 10),
                      Text("${controller.DoctorlistApi[index!].costPerPatient}")
                    ],
                  ),),
                  Container(
                    height: 90,
                    width: 150,
                     padding:EdgeInsets.all(5),
                    decoration: BoxDecoration(border: Border.all(width: 0.5)),child:   Column(
                    children: [
                      Icon(
                        Icons.lock_clock,
                        color: ColorApp.new26,
                        size: 25,
                      ),
                      SizedBox(height: 10),
                      Text("60 دقيقة")
                    ],
                  ),),
                  

                ],
              ),

              SizedBox(height: 10),
              inof("${controller.DoctorlistApi[index!].doctorName}", "الاسم"),
              inof("${controller.DoctorlistApi[index!].doctorSpecialization}",
                  "الاختصاص"),
              inof("${controller.DoctorlistApi[index!].doctorAddrress}",
                  "العنوان"),
              inof("${controller.DoctorlistApi[index!].doctorPhone}", "الهاتف"),
              inof("${controller.DoctorlistApi[index!].workExperience}",
                  "الخبرة"),
              inof("${controller.DoctorlistApi[index!].doctorEmail}", "ايميل"),
              Spacer(),
              Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Get.to(Appointment_Booking(
                          idDoctorIndex: index!,
                          idDoctor: controller.DoctorlistApi[index!].doctorId
                              .toString(),
                        ));
                      },
                      child: Container(
                        height: 45,
                        margin: EdgeInsets.symmetric(horizontal: 90),
                        padding:
                            EdgeInsets.symmetric(vertical: 1, horizontal: 1),
                        decoration: BoxDecoration(
                          color: ColorApp.new26,
                          borderRadius: BorderRadius.circular(
                            20,
                          ),
                        ),
                        child: Container(
                          width: 200,
                          // height: 30,
                          padding: EdgeInsets.all(3),
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: ColorApp.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Text(
                            "حجز موعد",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                          // child: Image.asset("assets/list.png")
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Image.asset(
              //       "assets/image/splashtow.png",
              //       height: 50,
              //       width: 50,
              //     ),
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

inof(String Var_info, String titles) => Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            Var_info,
            textAlign: TextAlign.end,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),

          SizedBox(width: 30),
          Text(
            titles,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
    );
