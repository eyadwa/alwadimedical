import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/MainController/controllerpatient.dart';
import '../../../core/constant/color.dart';

class UserPage extends StatefulWidget {
  const UserPage({
    Key? key,
  }) : super(key: key);

  @override
  _UserPage createState() => _UserPage();
}
MainController _controller =Get.find();
class _UserPage extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: ColorApp.white,
      height: double.infinity,
      width: double.infinity,
      // decoration: BoxDecoration(border: Border(bottom: BorderSide() )),
      child: GetBuilder<MainController>(builder: (controller) {
        return ListView(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorApp.new26,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                  ),
                  Center(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("  "),
                          Icon(Icons.photo_camera),
                        ],
                      ),
                      alignment: Alignment.center,
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          border: Border.all(width: 3, color: ColorApp.white)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${controller.patientEmptyList[0].patientName}",
                      style: TextStyle(fontSize: 25),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              inof("${controller.patientEmptyList[0].patientName}", Icon(Icons.drive_file_rename_outline)),
              const Divider(color: Colors.black, height: 10),
              SizedBox(
                height: 10,
              ),
              inof("${controller.patientEmptyList[0].patientPhone}", Icon(Icons.phone_android)),
              const Divider(color: Colors.black, height: 10),
              SizedBox(
                height: 10,
              ),
              inof("${controller.patientEmptyList[0].registrationDate}", Icon(Icons.date_range)),
              const Divider(color: Colors.black, height: 10),
              SizedBox(
                height: 25,
              ), Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/image/splashfirst.png",
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(width: 5),
                  Text("مركز الوادي الطبي",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
            ])
          ],
        );
      }),
    ));
  }
}


inof(String Var_info,Icon _icon)=>  Container(
  width: double.infinity,
  decoration: BoxDecoration( border: Border.all(color: Colors.blueAccent)),
  padding: const EdgeInsets.all(8.0),
  margin: const EdgeInsets.all(8.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(Var_info,textAlign: TextAlign.start,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
      ,SizedBox(width:50)
      ,  Padding(
          padding: const EdgeInsets.all(8.0), child: _icon),
    ],
  ),
);

