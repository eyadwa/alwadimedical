import 'package:centerm/controller/MainController/controllerpatient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: 600,
                width: 200,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      mainAxisExtent: 100),
                  itemCount: controller.eyadlist.length,
                  itemBuilder: (context, index) => Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.symmetric(horizontal: 25,vertical: 1),
                    height: 100,
                    width: 50,
                    color: Colors.grey,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${controller.eyadlist[index].date!.year}-",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          Text(
                            "${controller.eyadlist[index].date!.month}-",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          Text(
                            "${controller.eyadlist[index].date!.day}",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ), SizedBox(width: 20),Text(
                            "${controller.eyadlist[index].startTime!.hour}   الساعة ",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                        ],
                      ),SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${controller.DoctorlistApi[0].doctorName}",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "اسم الطبيب",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ],
                      ),SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "${controller.DoctorlistApi[0].doctorSpecialization}",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          SizedBox(width: 20),
                          Text(
                            "اختصاص",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
            ),
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
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              ],
            ),
          ],
        );
      }),
    );
  }
}
