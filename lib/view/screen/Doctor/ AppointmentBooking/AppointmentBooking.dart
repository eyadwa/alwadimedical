import 'package:centerm/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../../../controller/MainController/controllerpatient.dart';
import '../../home.dart';

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

      //_controller.fetcappointment(idDoctorIndex, _dateTTime);
//print (_dateTTime);
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
                  // Padding(
                  //   padding:
                  //       EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  //   child: MaterialButton(
                  //     onPressed: _showDatePicker,
                  //     padding: EdgeInsets.all(10),
                  //     color: ColorApp.new26,
                  //     elevation: 25,
                  //     shape: RoundedRectangleBorder(
                  //         borderRadius:
                  //             BorderRadius.all(Radius.circular(20.0))),
                  //     child: Text(
                  //       "اختار التاريخ المناسب",
                  //       style: TextStyle(color: ColorApp.black, fontSize: 15),
                  //     ),
                  //   ),
                  // ),
                  Container(
                    height: 75,
                    width: 300,
                    color: ColorApp.new28,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 60,
                        itemBuilder: (context, index) {

                          lastDayOfMonth = DateTime(now.year, now.month, now.day + index);
                          return GestureDetector(
                            onTap: () {
                            var  lasttttDayOfMonth = DateTime(now.year, now.month, now.day + index);
                              var datetoday = DateFormat('yyyy-MM-dd').format(lasttttDayOfMonth);
                              controller.changeDate(idDoctor,datetoday);
                              controller.ListAppointDoctorApi(idDoctor,datetoday);
                            dateAppoit= "${lastDayOfMonth.year}/${lastDayOfMonth.month}/${lastDayOfMonth.day}";
                            dateAppoit=datetoday;
                            print(dateAppoit);
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
                    height: 300,
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: controller.listAppoint.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        crossAxisCount: 4,
                      ),
                      itemBuilder: (context, index) =>GestureDetector(
                        onTap: (){
                          datetime=controller.listAppoint[index].startTime!.hour.toString()+":"+controller.listAppoint[index].startTime!.minute.toString();
                          print(datetime);
                          print(dateAppoit);


                        //  controller.newAppoitment2(idDoctorIndex.toString(),dateAppoit , , ,);
                        },
                        child:  Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color:
                              controller.listAppoint[index].isReversed ==
                                  false
                                  ? ColorApp.white
                                  : Colors.grey,
                              border: Border.all(
                                  width: 1.5,
                                  color: controller.listAppoint[index]
                                      .isReversed ==
                                      false
                                      ? ColorApp.new26
                                      : Colors.black),
                              borderRadius:
                              BorderRadius.all(Radius.circular(8))),
                          child:
                          Center(
                            child:
                            (
                                controller
                                    .listAppoint[index].isReversed ==
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

                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 50),
                  //   child: MaterialButton(onPressed: (){
                  //     controller.eyadapointment(_dateTTime,"35");
                  //     controller.choisdate(_dateTTime,"${controller.DoctorlistApi[0].doctorId}");
                  //   },
                  //     color: Colors.black,
                  //
                  //     height: 30,),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 120),
                  //   child: TextFormField(
                  //     validator: (val) {
                  //       val = hour_controller!.text;
                  //       if (val.length != 2) {
                  //         return '  ادخل الوقت صحيح مثال 01';
                  //       } else
                  //         return null;
                  //     },
                  //     controller: hour_controller,
                  //     decoration: InputDecoration(
                  //         hintText: "00",
                  //         hintStyle: TextStyle(fontSize: 15),
                  //         floatingLabelBehavior: FloatingLabelBehavior.always,
                  //         contentPadding:
                  //             EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  //         label: Container(
                  //             margin: EdgeInsets.symmetric(horizontal: 9),
                  //             child: Text(" ادخل الوقت")),
                  //       suffixIcon: hour_controller!.text.isEmpty ?  Container(width: 0) : Container(width: 0)
                  //        ,
                  //         border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(30),
                  //         )),
                  //   ),
                  // ),
                  // SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 120),
                    child: MaterialButton(
                      elevation: 25,
                      onPressed: () {
                        showAlertDialog(context);
                        print(idDoctor);
                        print(dateAppoit);
                        print(controller.patientEmptyList[0].patientId);
                        print(controller.patientEmptyList[0].patientId);
                        print(datetime);
                         controller.newAppoitment2(idDoctor,dateAppoit , "${controller.patientEmptyList[0].patientId}", datetime,);



                        //Get.to(home());

                        // print(  "${controller.patientEmptyList[0].patientId}");
                        //   if(formKey.currentState!.validate()){
                        //
                        //   controller.newAppoitment2("${controller.DoctorlistApi[idDoctorIndex].doctorId}", "${hour_controller.text}", "${controller.patientEmptyList[0].patientId}", "${_dateTTime}");
                        //   controller.fetcappointment("${_dateTTime}",controller.DoctorlistApi[0].doctorId);
                        //
                        // }else
                        //   {
                        //   print("the form contain error");
                        // }
                      },
                      color: ColorApp.new26,
                      child: Text(
                        "حجز موعد",
                        style: TextStyle(fontSize: 20,color: ColorApp.white),
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
        "تأكيد",style: TextStyle(color:ColorApp.new26),
        textAlign: TextAlign.start,
      ),
      onPressed: () {
         Get.to(home());

      },
    );


    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("تاكيد الحجز", textAlign: TextAlign.end,),
      content: Text("هل تريد تأكيد الجحز؟", textAlign: TextAlign.end,),
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
