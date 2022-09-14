import 'package:centerm/controller/MainController/controllerpatient.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class DateAppoitment extends StatelessWidget {
  const DateAppoitment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainController>(
          builder: (controller) {
            return Container(height: double.infinity, width: double.infinity,
              child: ListView(
                children: [
                  GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2)
                      , itemCount: controller.AppointmentListAllPatient.length
                      , itemBuilder: (context, index) =>
                      Text(controller.AppointmentListAllPatient[index].patientNavigation)



                  )


                ],
              ),
            );
          }
      ),
    );
  }
}
