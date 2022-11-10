import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/MainController/controllerpatient.dart';
import '../../../core/constant/color.dart';

class ListDepthome extends StatelessWidget {
  const ListDepthome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int indexcolors = 0;
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.symmetric(horizontal: 5),
        padding: EdgeInsets.symmetric(vertical: 5),
        width: double.infinity,
        child: GetBuilder<MainController>(
          init: MainController(),
          builder: (controller) => CarouselSlider.builder(
              itemCount: controller.deptlist.length,
              itemBuilder: (context, index, realIndex) => buildContainerSlider(
                  controller.deptlist[index].departmentName),
              options: CarouselOptions(height: 400)),
        )

        // GetBuilder<MainController>(
        //     init: MainController(),
        //     builder: (Controller) {
        //       if (Controller.isLoadingspaci == true) {}
        //       {
        //         return ListView.builder(
        //           scrollDirection: Axis.horizontal,
        //           itemCount: Controller.deptlist.length,
        //           itemBuilder: (context, index) {
        //             return GestureDetector(
        //               onTap: () {
        //                 indexcolors=Controller.deptlist.indexOf(Controller.deptlist[index]);
        //                 Controller.fetcSpeci("${Controller.deptlist[index].departmentId}");
        //               },
        //               child: Container(
        //                 alignment: Alignment.center,
        //                 padding:
        //                     EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        //                 margin: EdgeInsets.only(left: 10, bottom: 10),
        //                 height: 30,
        //                 width: 125,
        //                 decoration: index==indexcolors? widgetChangeColors().BoxDecorationChange(true): widgetChangeColors().BoxDecorationChange(false)
        //                 ,
        //                 child:index==indexcolors? widgetChangeColors().TextChange( Controller.deptlist[index].departmentName!,true): widgetChangeColors().TextChange( Controller.deptlist[index].departmentName!,false)
        //               ),
        //             );
        //           },
        //         );
        //       }
        //     }),
        );
  }
}

Widget buildContainerSlider(var x) => Container(
    margin: EdgeInsets.symmetric(horizontal: 12),
    width: 354,
    height: 634,
    decoration: BoxDecoration(
      color: Colors.blueGrey.withOpacity(0.1),
    ),
    child: Container(
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: MemoryImage(
      //       base64Decode(imageMemory),
      //     ),
      //   ),
      // ),
      child: Container(
        margin: EdgeInsets.only(top: 325),
        height: 10,
        alignment: Alignment(0,0),
        decoration: BoxDecoration(color: ColorApp.purple38.withOpacity(0.3)),
        child: Text(x,style: TextStyle(color: ColorApp.white,fontSize: 30,fontWeight: FontWeight.w900),),
      ),
    )
    // Image.memory(base64Decode(x)),
    );

class widgetChangeColors {
  Text TextChange(String name, bool changeColor) {
    return Text(
      name,
      style: TextStyle(
        color: changeColor ? ColorApp.white : ColorApp.new26,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  BoxDecoration BoxDecorationChange(bool changeColor) {
    return BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: changeColor ? ColorApp.new26 : ColorApp.white,
        borderRadius: BorderRadius.circular(
          30,
        ));
  }
}
