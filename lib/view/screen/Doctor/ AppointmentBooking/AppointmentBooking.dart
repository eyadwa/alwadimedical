import 'package:centerm/controller/MainController/controllerpatient.dart';
import 'package:centerm/core/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Appointment_Booking extends StatelessWidget {
  const Appointment_Booking({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime _dateTime = DateTime.now();
    var _dateTTime =  DateTime.utc(2022,9,8);


    void _showDatePicker() {
      showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2022),
          lastDate: DateTime(2023))
          .then((value) => _dateTTime = value!);
    }

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: GetBuilder<MainController>(builder: (controller) {
            return Container(
              height: double.infinity,
              width: double.infinity,
              color: ColorApp.white,
              child: ListView(children: [
                SizedBox(height: 40),
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
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.date_range,
                        size: 50, color: ColorApp.new26)),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  child: MaterialButton(
                    onPressed: _showDatePicker,
                    padding: EdgeInsets.all(10),
                    color: ColorApp.new26,
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Text(
                      "اختار التاريخ المناسب",
                      style: TextStyle(color: ColorApp.black, fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  color: ColorApp.new26,
                  width: 10,
                  height: 2,
                ),
                SizedBox(height: 30),
                Container(
                  // decoration: BoxDecoration(border: Border.all(width: 1)),
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  height: 250,
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: controller.appointmentList.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                      crossAxisCount: 4,
                    ),
                    itemBuilder: (context, index) =>
                        Center(
                          child: Container(
                            width: 50,
                            height: 50,
                            margin: EdgeInsets.all(1),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.5, color: ColorApp.new26),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(8))),
                            child: Center(child: (Text("${controller.appointmentList[index].doctor}")

                            )
                              ,),
                          ),
                        ),
                  ),
                ),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  child: MaterialButton(
                    elevation: 25,
                    onPressed: () {
                      //print("${controller.appointmentList[0].doctor}");
                   //   print(_dateTime.toString());
                      print(_dateTTime.toString());
                    // controller.choisdate(_dateTTime,controller.appointmentList[0].doctor.toString());
                    // print("${controller.appointmentList[0].doctor}");
                    },
                    color: ColorApp.new26,
                    child: Text("حجز موعد",style: TextStyle(fontSize: 20),),
                    minWidth: 10.0,
                    height: 35,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  ),
                ),
              ]),
            );
          }),
        ),
      ),
    );
  }
}
// Container(padding: EdgeInsets.all(10),
// margin: EdgeInsets.all(25),
// color: Colors.teal,
// child: ListView.builder(
// scrollDirection: Axis.horizontal,
// itemCount: Appointment_Bookinglist.length,
// itemBuilder: (context, index) {
// return Row(
// children: [
// Column(children: [
// Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// margin: EdgeInsets.all(10),
// padding: EdgeInsets.symmetric(vertical: 10),
// decoration: BoxDecoration(
// border: Border.all(width: 1),
// borderRadius: BorderRadius.all(Radius.circular(5))),
// width: 50,
// height: 75,
// child: Column(
// children: [
// Text("${Appointment_Bookinglist[index].id!}"),
// SizedBox(height: 5),
// Text(Appointment_Bookinglist[index].day!)
// ],
// ),
// ),
// ),
// ]),
// ],
// );
// }),
// ))
