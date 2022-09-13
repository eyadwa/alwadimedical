import 'package:flutter/material.dart';

import 'package:get/get.dart';

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
      width: 10,
      height: 60,
      child: GetBuilder<MainController>(
        init: MainController(),
        builder: (Controller) => ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Controller.deptlist.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Controller.AddIdDept("${Controller.deptlist[index].departmentId}");
                print("${Controller.deptlist[index].departmentId}");
                Controller.fetcSpeci("${Controller.deptlist[index].departmentId}");
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                margin: EdgeInsets.only(left: 10),
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                    color: ColorApp.new26,
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  Controller.deptlist[index].departmentName!,
                  style: TextStyle(color: ColorApp.white,fontWeight: FontWeight.bold,),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
