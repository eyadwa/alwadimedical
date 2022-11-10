import 'package:centerm/core/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../../controller/MainController/controllerpatient.dart';
import '../../home.dart';
import 'PostAppointmentBooking.dart';

class Appointment_Booking extends StatelessWidget {
  Appointment_Booking(
      {Key? key, required this.idDoctorIndex, required this.idDoctor})
      : super(key: key);
  int idDoctorIndex;
  String idDoctor;

  @override
  Widget build(BuildContext context) {
    String? datetime;
    String? dateAppoit;
    var _dateTTime = DateTime.utc(2022, 9, 8);
    final TextEditingController? hour_controller = TextEditingController();
    final formKey = GlobalKey<FormState>();
    MainController _controller = Get.find();
    void _showDatePicker() {
      showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2022),
              lastDate: DateTime(2023))
          .then((value) => _dateTTime = value!);
      var d = DateFormat('yyyy-MM-dd').format(_dateTTime);
    }

    DateTime now = DateTime.now();
    late DateTime lastDayOfMonth;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: GetBuilder<MainController>(builder: (controller) {
            return Form(
              key: formKey,
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: ColorApp.white,
                child: ListView(children: [
                  SizedBox(height: 10),
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 10),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.date_range,
                          size: 50, color: ColorApp.new26)),
                  SizedBox(height: 10),
                  Container(
                    height: 75,
                    width: 300,
                    color: ColorApp.new28,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 60,
                        itemBuilder: (context, index) {
                          lastDayOfMonth =
                              DateTime(now.year, now.month, now.day + index);
                          return GestureDetector(
                            onTap: () {
                              var lasttttDayOfMonth = DateTime(
                                  now.year, now.month, now.day + index);
                              var datetoday = DateFormat('yyyy-MM-dd')
                                  .format(lasttttDayOfMonth);
                              controller.changeDate(idDoctor, datetoday);
                              controller.ListAppointDoctorApi(
                                  idDoctor, datetoday);
                              dateAppoit =
                                  "${lastDayOfMonth.year}/${lastDayOfMonth.month}/${lastDayOfMonth.day}";
                              dateAppoit = datetoday;
                              controller.ADDDate("${dateAppoit}");

                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: ColorApp.white,
                              ),
                              padding: EdgeInsets.all(3),
                              margin: EdgeInsets.all(5),
                              height: 40,
                              width: 50,
                              child: Center(
                                  child: Text(
                                      "${lastDayOfMonth.month}/${lastDayOfMonth.day}")),
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 10),
                  Container(margin: EdgeInsets.symmetric(horizontal: 50 ),
                    width: 20,
                    height: 35,
                    color: ColorApp.purple38,
                    child:  Row(mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center, children: [
                      Text("${controller.choisData}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      SizedBox(width: 20),
                      Text("${controller.choisTime}",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600))
                    ]),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 50),
                    color: ColorApp.new26,
                    width: 10,
                    height: 2,
                  ),
                  SizedBox(height: 30),
                  Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    height: 300,
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: controller.listAppoint.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          datetime = controller.listAppoint[index].startTime!.hour.toString() + ":" + controller.listAppoint[index].startTime!.minute.toString();
                          controller.ADDTime("${datetime}");
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: controller.listAppoint[index].isReversed ==
                                      false
                                  ? ColorApp.white
                                  : Colors.grey,
                              border: Border.all(
                                  width: 1.5,
                                  color: controller
                                              .listAppoint[index].isReversed ==
                                          false
                                      ? ColorApp.new26
                                      : Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Center(
                            child: (controller.listAppoint[index].isReversed ==
                                    false
                                ? Text(
                                    "${controller.listAppoint[index].startTime!.hour}:${controller.listAppoint[index].startTime!.minute}")
                                : Text("محجوز")),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 120),
                    child: MaterialButton(
                      elevation: 25,
                      onPressed: () {
                        showAlertDialog(context);
                        String x =
                            "${controller.patientEmptyList[0].patientId}";
                        newAppoitment(idDoctor, datetime, x, dateAppoit);
                        print(idDoctor);
                        print(datetime);
                        print(x);
                        print(dateAppoit);
                      },
                      color: ColorApp.new26,
                      child: Text(
                        "حجز موعد",
                        style: TextStyle(fontSize: 20, color: ColorApp.white),
                      ),
                      minWidth: 10.0,
                      height: 35,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                    ),
                  ),
                ]),
              ),
            );
          }),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text(
        "تأكيد",
        style: TextStyle(color: ColorApp.new26),
        textAlign: TextAlign.start,
      ),
      onPressed: () {
        Get.to(home());
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(
        "تاكيد الحجز",
        textAlign: TextAlign.end,
      ),
      content: Text(
        "هل تريد تأكيد الجحز؟",
        textAlign: TextAlign.end,
      ),
      actions: [okButton],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
