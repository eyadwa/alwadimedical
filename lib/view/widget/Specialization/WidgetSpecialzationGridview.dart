import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/MainController/controllerpatient.dart';
import '../../screen/Doctor/ListDoctor.dart';
class SpecializationWidgetGridView extends StatelessWidget {
  const SpecializationWidgetGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<MainController>(builder: (Controller)  => Controller.isLoadingspaci==true?
    Center(child: CircularProgressIndicator()):Container(
        child: GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: 5,
    childAspectRatio: 0.8
  ),

            itemCount: Controller.spacilist.length,
            itemBuilder: (context, index)

              =>
              InkWell(
                child: Container(
                  margin: EdgeInsets.symmetric(
                      vertical: 1, horizontal: 1),
                  decoration: BoxDecoration(
                    // color: ColorApp.purple44,
                      borderRadius: BorderRadius.circular(24)),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
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
                          height: 150,
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
                      SizedBox(height: 1),
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
              )
            ),
      )

    );

  }
}

// Container(
// height: 500,
// width: 200,
// child: GetBuilder<MainController>(
// builder: (Controller) => GridView.builder(
// gridDelegate:
// SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisSpacing: 1,
// mainAxisSpacing: 1,
// crossAxisCount: 2),
// itemCount: 4,
// itemBuilder: (context, index) => Container(
// margin: EdgeInsets.all(10),
// padding: EdgeInsets.all(10),
// child: InkWell(
// onTap: () {
// Get.to(DoctorsSp());
// MainController.AddNamedept(
// "${Controller.deptlist[index].departmentName}");
// print(
// "${Controller.spacilist[index].specializationName}");
// Controller.fetcDoctor(
// "${Controller.spacilist[index].specializationName}");
// },
// child: Container(
// width: 200,
// height: 200,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(25),
// boxShadow: [
// BoxShadow(
// color: Colors.grey.withOpacity(0.5),
// spreadRadius: 5,
// blurRadius: 8,
// offset: Offset(
// 1, 9), // changes position of shadow
// ),
// ],
// image: DecorationImage(
// image: MemoryImage(base64Decode(
// "${Controller.spacilist[index].specializationmg}")),
// fit: BoxFit.fitHeight,
// ),
// ),
// child: Text(
// Controller
//     .spacilist[index].specializationName!,
// textAlign: TextAlign.end,
// style: TextStyle(
// color: Colors.black,
// fontSize: 15,
// fontWeight: FontWeight.bold),
// ),
// ),
// ),
// ),
// )),
// ),