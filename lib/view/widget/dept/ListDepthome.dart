import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controller/MainController/Auth.dart';
import '../../../controller/MainController/controllerpatient.dart';
import '../../../core/constant/color.dart';


class ListDepthome extends StatelessWidget {
  const ListDepthome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(vertical: 5),
      width:double.infinity,
      height: 60,
      child: GetBuilder<MainController>(
        init: MainController(),
        builder: (Controller){  if (Controller.isLoadingspaci==true){

        }
      {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Controller.deptlist.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Auth().Login_eyad();
                  Controller.AddIdDept("${Controller.deptlist[index].departmentId}");
                  print("${Controller.deptlist[index].departmentId}");
                  Controller.fetcSpeci("${Controller.deptlist[index].departmentId}");
                },
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  margin: EdgeInsets.only(left: 10,bottom: 10),
                  height: 30,
                  width:125,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      color: ColorApp.new26,
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    Controller.deptlist[index].departmentName!,
                    style: TextStyle(color: ColorApp.white,fontWeight: FontWeight.bold,),
                  ),
                ),
              );
            },
          );
        }
        }

      ),
    );
  }
}
