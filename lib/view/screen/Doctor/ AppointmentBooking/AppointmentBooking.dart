import 'package:centerm/controller/MainController/controllerpatient.dart';
import 'package:centerm/core/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Appointment_Booking extends StatelessWidget {
  Appointment_Booking({Key? key, required this.idDoctorIndex,required this.idDoctor})
      : super(key: key);
  int idDoctorIndex;
  String idDoctor;

  @override
  Widget build(BuildContext context) {
    DateTime _dateTime = DateTime.now();
    var _dateTTime = DateTime.utc(2022, 9, 8);
    final TextEditingController? hour_controller = TextEditingController();
    final formKey = GlobalKey<FormState>();
MainController _controller= Get.find();    void _showDatePicker() {
      showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2022),
              lastDate: DateTime(2023))
          .then((value) => _dateTTime = value!);


   _controller.fetcappointment(idDoctorIndex , _dateTTime);

print(idDoctorIndex);
print(idDoctor);


    }

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
                  SizedBox(height: 40),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.date_range,
                          size: 50, color: ColorApp.new26)),
                  SizedBox(height: 10),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                    child: MaterialButton(
                      onPressed: _showDatePicker
                      ,
                      padding: EdgeInsets.all(10),
                      color: ColorApp.new26,
                      elevation: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
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
                    height: 150,
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: controller.appointmentList.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (context, index) => Center(
                        child: Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.5, color: ColorApp.new26),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          child: Center(
                            child: (Text(
                                "${controller.appointmentList[index].doctor}")),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 2),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 120),
                    child: TextFormField(
                      validator: (val) {
                        val = hour_controller!.text;
                        if (val.length != 2) {
                          return '  ادخل الوقت صحيح مثال 01';
                        } else
                          return null;
                      },
                      controller: hour_controller,
                      decoration: InputDecoration(
                          hintText: "00",
                          hintStyle: TextStyle(fontSize: 15),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                          label: Container(
                              margin: EdgeInsets.symmetric(horizontal: 9),
                              child: Text(" ادخل الوقت")),
                        suffixIcon: hour_controller!.text.isEmpty ?  Container(width: 0) : Container(width: 0)
                         ,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          )),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 100),
                    child: MaterialButton(
                      elevation: 25,
                      onPressed: () {
                        print(  "${controller.patientEmptyList[0].patientId}");
                        if(formKey.currentState!.validate()){

                        controller.newAppoitment2("${controller.DoctorlistApi[idDoctorIndex].doctorId}",
                            "${hour_controller.text}",
                            "${controller.patientEmptyList[0].patientId}",
                            "${_dateTTime}");
                       controller.fetcappointment("${_dateTTime}",controller.DoctorlistApi[0].doctorId);

                      }else {
                        print("the form contain error");
                      }
                      },
                      color: ColorApp.new26,
                      child: Text(
                        "حجز موعد",
                        style: TextStyle(fontSize: 20),
                      ),
                      minWidth: 10.0,
                      height: 35,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                    ),
                  ),
                  SizedBox(height: 10),
                 TextButton(child:
                    Text(controller.result,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),onPressed:(){
                   controller.deletetext();


                 }

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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                ]),
              ),
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
