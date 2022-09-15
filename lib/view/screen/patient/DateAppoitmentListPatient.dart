import 'package:centerm/controller/MainController/controllerpatient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateAppoitment extends StatelessWidget {
  const DateAppoitment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainController>(builder: (controller) {
        return Container(
          height: double.infinity,
          width: double.infinity,
          child: ListView(
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: 1,
                itemBuilder: (context, index) => Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "${controller.AppointmentListAllPatient[0].endTime}",
                    style: TextStyle(color: Colors.black, fontSize: 50),
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
          ),
        );
      }),
    );
  }
}
