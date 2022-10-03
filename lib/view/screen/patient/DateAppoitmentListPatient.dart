import 'package:centerm/controller/MainController/controllerpatient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/color.dart';

class DateAppoitment extends StatelessWidget {
  DateAppoitment({Key? key}) : super(key: key);

  final _datenow = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainController>(builder: (controller) {
        return ListView(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorApp.new26,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image.asset("assets/image/splashtow.png", height: 50, width: 50,),
                      // SizedBox(height: 5),
                      Text("مركز الوادي الطبي",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Icon(
                    Icons.date_range_sharp,
                    size: 70,
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${_datenow.year}-",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 2),
                      Text("${_datenow.month}-",
                          style: TextStyle(fontSize: 20)),
                      SizedBox(width: 2),
                      Text("${_datenow.day}", style: TextStyle(fontSize: 20)),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 600,
              width: 200,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 5,
                    mainAxisExtent: 125.0,
                    childAspectRatio: 4 / 1),
                padding: EdgeInsets.symmetric(vertical: 10),
                itemCount: controller.eyadlist.length,
                itemBuilder: (context, index) => Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                         blurRadius: 100,
                        offset: Offset(5, 6), // changes position of shadow
                      ),
                    ],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                    color: ColorApp.new28,
                  ),
                  padding: EdgeInsets.all(2),
                  margin: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${controller.eyadlist[index].doctorNavigation?.doctorName}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "اسم الطبيب",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${controller.eyadlist[0].doctorNavigation?.doctorSpecialization}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "اختصاص",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(color: Colors.black26,
                      height: 2,
                      width: 100,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${controller.eyadlist[index].startTime?.year}-",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "${controller.eyadlist[index].startTime!.month}-",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "${controller.eyadlist[index].startTime!.day}",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "${controller.eyadlist[index].startTime!.hour}   الساعة ",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ]),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
