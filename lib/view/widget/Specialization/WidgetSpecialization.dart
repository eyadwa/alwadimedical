import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/MainController/controllerpatient.dart';
import '../../screen/Doctor/ListDoctor.dart';
class SpecializationWidget extends StatelessWidget {
  const SpecializationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<MainController>(builder: (Controller) {
      return ListView.builder(
          itemCount: Controller.spacilist.length,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return InkWell(
              child: Container(
                margin: EdgeInsets.symmetric(
                    vertical: 30, horizontal: 30),
                decoration: BoxDecoration(
                  // color: ColorApp.purple44,
                    borderRadius: BorderRadius.circular(24)),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 6),
                    InkWell(onTap: (){
                      Get.to(DoctorsSp());
                      MainController.AddNamedept("${Controller.deptlist[index].departmentName}");
                      print("${Controller.spacilist[index].specializationName}");
                      Controller.fetcDoctor("${Controller.spacilist[index].specializationName}");
                    },
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: Offset(
                                  1, 9), // changes position of shadow
                            ),
                          ],

                          image: DecorationImage(
                            image: MemoryImage(base64Decode("${Controller.spacilist[index].specializationmg}")
                               ),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                     Controller.spacilist[index].specializationName!,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 200,
                      height: 3,
                      color: Colors.black45,
                    )
                    // Image.asset(imgAssetPath, height: 160,fit: BoxFit.fitHeight,)
                  ],
                ),
              ),
            );
          });
    }
    );

  }
}
