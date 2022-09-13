import 'dart:convert';
import 'package:centerm/view/screen/Doctor/ListDoctor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/MainController/controllerpatient.dart';
import '../../core/constant/color.dart';
import '../../core/constant/const.dart';
import '../../core/constant/imageasset.dart';
import '../../data/datasource/static.dart';
import '../widget/Specialization/WidgetSpecialization.dart';
import '../widget/doctor/getbuilderListDoctor.dart';
import '../widget/drawer/navigation_drawer.dart';
import 'Doctor/DoctorsInfo.dart';
import 'home2.dart';

class home2 extends StatefulWidget {
  const home2({
    Key? key,
  }) : super(key: key);

  @override
  _home createState() => _home();
}

class _home extends State<home2> {
  final MainController _controllerput = Get.find();

  //final MainController _controllerput_patient = Get.find();

//   @override
//   void initState() {
// _controllerput.fetcporduct();
//     _controllerput_patient.fetcporduct();
//     super.initState();
//   }

  @override
  Widget build(BuildContext context) {
    TextEditingController? _searchController;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        endDrawer: NavigationDrawerWidget(),
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          foregroundColor: ColorApp.nexpurple,
          title: Text(namecenter),
          backgroundColor: ColorApp.white,
          elevation: 100.0,
          shadowColor: ColorApp.nexpurple,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: ColorApp.white,
            child: ListView(children: [
              Padding(
                padding:
                const EdgeInsets.only(top: 20.0, right: 20, bottom: 10),
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: TextFormField(
                  textAlign: TextAlign.right,
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: "اختر القسم الخاص بك",
                    hintStyle: TextStyle(fontSize: 15),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                    label: Container(
                        margin: EdgeInsets.symmetric(horizontal: 9),
                        child: Text(
                          "بحث",
                          style: TextStyle(
                              fontSize: 40, color: ColorApp.nexpurple),
                        )),
                    suffixIcon: Icon(
                      Icons.search_rounded,
                      color: ColorApp.nexpurple,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),

              // Container(
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //      //color: ColorApp.purple40,
              //   ),
              //   margin: EdgeInsets.symmetric(horizontal: 5),
              //   padding: EdgeInsets.symmetric(vertical: 5),
              //   width: 10,
              //   height: 60,
              //   child: GetBuilder<MainController>(
              //     init: MainController(),
              //     builder: (Controller) =>
              //         ListView.builder(
              //           scrollDirection: Axis.horizontal,
              //           itemCount: 6,
              //           itemBuilder: (context, index) {
              //             return GestureDetector(
              //               onTap: () {},
              //               child: Container(
              //                 alignment: Alignment.center,
              //                 padding: EdgeInsets.symmetric(horizontal: 10),
              //                 margin: EdgeInsets.only(left: 10),
              //                 height: 30,
              //                 width: 100,
              //                 decoration: BoxDecoration(
              //                     color: ColorApp.purple42,
              //                     borderRadius: BorderRadius.circular(30)),
              //                 child: Text(
              //                   itemlist[index].title!,
              //                   style: TextStyle(color: ColorApp.black,fontWeight: FontWeight.bold),
              //                 ),
              //               ),
              //             );
              //           },
              //         ),
              //   ),
              // ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                margin: EdgeInsets.symmetric(horizontal: 5),
                padding: EdgeInsets.symmetric(vertical: 5),
                width: 10,
                height: 60,
                child: GetBuilder<MainController>(
                  init: MainController(),
                  builder: (Controller) => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: Controller.deptlist.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Controller.AddIdDept("${Controller.deptlist[index].departmentId}");
                          print("${Controller.deptlist[index].departmentId}");

                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          margin: EdgeInsets.only(left: 10),
                          height: 30,
                          width: 90,
                          decoration: BoxDecoration(
                              color: ColorApp.purple38,
                              borderRadius: BorderRadius.circular(30)),
                          child: Text(
                            Controller.deptlist[index].departmentName!,
                            style: TextStyle(color: ColorApp.white),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 30),
              GetBuilder<MainController>(
                  builder: (context) {

                    return SpecializationWidget();
                  }
              )
              // Container(
              //   height: 500,
              //   child:
              //   GetBuilder<MainController>(builder: (Controller) {
              //     return ListView.builder(
              //         itemCount: doctorlist.length,
              //         shrinkWrap: true,
              //         physics: ClampingScrollPhysics(),
              //         scrollDirection: Axis.vertical,
              //         itemBuilder: (context, index) {
              //           return InkWell(
              //             child: Container(
              //               margin: EdgeInsets.symmetric(
              //                   vertical: 30, horizontal: 30),
              //               decoration: BoxDecoration(
              //                   // color: ColorApp.purple44,
              //
              //                   borderRadius: BorderRadius.circular(24)),
              //               padding: EdgeInsets.symmetric(horizontal: 10),
              //               child: Column(
              //                 // crossAxisAlignment: CrossAxisAlignment.start,
              //                 children: <Widget>[
              //                   SizedBox(height: 6),
              //                   InkWell(onTap: (){
              //                    Get.to(DoctorsSp());
              //                    MainController.AddNamedept("${Controller.deptlist[index].departmentName}");
              //                    print("${Controller.deptlist[index].departmentName}");
              //                    },
              //                     child: Container(
              //                       width: 200,
              //                       height: 200,
              //                       decoration: BoxDecoration(
              //                         borderRadius: BorderRadius.circular(25),
              //                         boxShadow: [
              //                           BoxShadow(
              //                             color: Colors.grey.withOpacity(0.5),
              //                             spreadRadius: 5,
              //                             blurRadius: 8,
              //                             offset: Offset(
              //                                 1, 9), // changes position of shadow
              //                           ),
              //                         ],
              //                         image: DecorationImage(
              //                           image: AssetImage(
              //                               doctorlist[index].UrlImage!),
              //                           fit: BoxFit.fitHeight,
              //                         ),
              //                       ),
              //                     ),
              //                   ),
              //                   SizedBox(height: 15),
              //                   Text(
              //                     doctorlist[index].describtion!,
              //                     textAlign: TextAlign.end,
              //                     style: TextStyle(
              //                         color: Colors.black,
              //                         fontSize: 15,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                   Container(
              //                     width: 200,
              //                     height: 3,
              //                     color: Colors.black45,
              //                   )
              //                   // Image.asset(imgAssetPath, height: 160,fit: BoxFit.fitHeight,)
              //                 ],
              //               ),
              //             ),
              //           );
              //         });
              //   }),
              //
              //   // SizedBox(height: 20),
              //   // DoctorsTile(),
              // ),

              // Container(
              //   height: 250,
              //   child: GetBuilder<MainController>(builder: (Controller) {
              //     return ListView.builder(
              //         itemCount: _controllerput.spacilist.length,
              //         shrinkWrap: true,
              //         physics: ClampingScrollPhysics(),
              //         scrollDirection: Axis.horizontal,
              //         itemBuilder: (context, index) {
              //           return Container(
              //             width: 100,
              //             margin: EdgeInsets.symmetric(horizontal: 30),
              //             decoration: BoxDecoration(
              //                 color: ColorApp.purple38,
              //                 borderRadius: BorderRadius.circular(24)),
              //             padding:
              //             EdgeInsets.only(top: 16, right: 16, left: 16),
              //             child: Column(
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: <Widget>[
              //                 SizedBox(height: 6),
              //                 Image.memory(
              //                   base64Decode(_controllerput
              //                       .spacilist[index].specializationmg!),
              //                   height: 160,
              //                   fit: BoxFit.fitHeight,
              //                 ),
              //                 SizedBox(height: 6),
              //                 Text(
              //                   _controllerput
              //                       .spacilist[index].specializationName!,
              //                   style: TextStyle(
              //                       color: Colors.white, fontSize: 20),
              //                 ),
              //                 // Image.asset(imgAssetPath, height: 160,fit: BoxFit.fitHeight,)
              //               ],
              //             ),
              //           );
              //         });
              //   }),
              //
              //   // SizedBox(height: 20),
              //   // DoctorsTile(),
              // ),
              // SizedBox(height: 10),
              // ListBuilderDoctor(name:'د.ريما',namedept: 'غدد',),
              //
            ]),
          ),
        ),
      ),
    );
  }
}

// class DoctorsTile extends StatelessWidget {
//   MainController _controllerDoctor = Get.find();
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Get.to(DoctorsInfo());
//       },
//       child: GetBuilder<MainController>(builder: (Controller) {
//         return ListView.builder(
//             itemBuilder: (context, index) => Container(
//                   decoration: BoxDecoration(
//                       color: ColorApp.purple40,
//                       borderRadius: BorderRadius.circular(20)),
//                   padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
//                   child: Row(
//                     children: <Widget>[
//                       // Image.asset("assets/doctor_pic.png", height: 50,),
//                       // SizedBox(width: 17,),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(
//                             "${_controllerDoctor.DoctorlistApi[index].doctorName}",
//                             style: TextStyle(
//                                 color: ColorApp.nexpurple, fontSize: 19),
//                           ),
//                           SizedBox(
//                             height: 2,
//                           ),
//                           Text(
//                             "${_controllerDoctor.DoctorlistApi[index].doctorCertificate}",
//                             style: TextStyle(fontSize: 15),
//                           )
//                         ],
//                       ),
//                       Spacer(),
//                       Container(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 15, vertical: 9),
//                         decoration: BoxDecoration(
//                             color: ColorApp.nexpurple,
//                             borderRadius: BorderRadius.circular(13)),
//                         child: Text(
//                           "Call",
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 13,
//                               fontWeight: FontWeight.w500),
//                         ),
//                       )
//                     ],
//                   ),
//                 ));
//       }),
//     );
//   }
// }

class SpecialistTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (Controller) {
      return ListView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              width: 150,
              margin: EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  color: ColorApp.purple38,
                  borderRadius: BorderRadius.circular(24)),
              padding: EdgeInsets.only(top: 16, right: 16, left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    Controller.spacilist[index].specializationName!,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    " Doctors",
                    style: TextStyle(color: Colors.white, fontSize: 13),
                  ),
                  // Image.asset(imgAssetPath, height: 160,fit: BoxFit.fitHeight,)
                ],
              ),
            );
          });
    });
  }
}
// Expanded(
//   flex: 1,
//   child: InkWell(
//     onTap: () {},
//     child: ListView.separated(
//       separatorBuilder: (context, _) => SizedBox(width: 0.1),
//       scrollDirection: Axis.horizontal,
//       itemCount: centerlist.length,//length controller//في حال انتظار التحمويل عرض container
//       itemBuilder: (contxt, index) {
//         return buildlist(index: index);
//       },
//     ),
//   ),
// ),

// GestureDetector(
// onTap: () {},
// child: Container(
// alignment: Alignment.center,
// padding: EdgeInsets.symmetric(horizontal: 10),
// margin: EdgeInsets.only(left: 1),
// height: 30,
// width: 80,
// decoration: BoxDecoration(
// color: ColorApp.purple38,
// borderRadius: BorderRadius.circular(30)),
// child: Text(
// "اختصاص",
// style: TextStyle(color: ColorApp.white),
// ),
// ),
// ),
// FutureBuilder(future:Remote_Services.fetchdept() ,builder: (context, snapshot) {
//
// if (snapshot.hasData) {
// return Padding(
// padding: const EdgeInsets.only(right: 2.0),
// child:
// );
// } else
// return ListView.builder(
//
// itemCount:  _controllerput.deptlist.length,
// itemBuilder: (BuildContext context, int index) {
// return Padding(
// padding: const EdgeInsets.only(right: 2.0),
// child: GestureDetector(
// onTap: () {},
// child: Container(
// alignment: Alignment.center,
// padding:
// EdgeInsets.symmetric(horizontal: 10),
// margin: EdgeInsets.only(left: 1),
// height: 30,
// width: 80,
// decoration: BoxDecoration(
// color: ColorApp.purple38,
// borderRadius:
// BorderRadius.circular(30)),
// child: Text(
// _controllerput.deptlist[index].departmentName!,
// style: TextStyle(color: ColorApp.white),
// ),
// ),
// ),
// );
// });
// //
//   Padding(
//     padding: const EdgeInsets.only(right: 2.0),
//     child: GestureDetector(
//       onTap: () {},
//       child: Container(
//         alignment: Alignment.center,
//         padding: EdgeInsets.symmetric(horizontal: 10),
//         margin: EdgeInsets.only(left: 1),
//         height: 30,
//         width: 80,
//         decoration: BoxDecoration(
//             color: ColorApp.purple38,
//             borderRadius: BorderRadius.circular(30)),
//         child: Text(
//           "اختصاص",
//           style: TextStyle(color: ColorApp.white),
//         ),
//       ),
//     ),
//   ),
//   Padding(
//     padding: const EdgeInsets.only(right: 2.0),
//     child: GestureDetector(
//       onTap: () {},
//       child: Container(
//         alignment: Alignment.center,
//         padding: EdgeInsets.symmetric(horizontal: 10),
//         margin: EdgeInsets.only(left: 1),
//         height: 30,
//         width: 80,
//         decoration: BoxDecoration(
//             color: ColorApp.purple38,
//             borderRadius: BorderRadius.circular(30)),
//         child: Text(
//           "اختصاص",
//           style: TextStyle(color: ColorApp.white),
//         ),
//       ),
//     ),
//   ),
//   Padding(
//     padding: const EdgeInsets.only(right: 2.0),
//     child: GestureDetector(
//       onTap: () {},
//       child: Container(
//         alignment: Alignment.center,
//         padding: EdgeInsets.symmetric(horizontal: 10),
//         margin: EdgeInsets.only(left: 1),
//         height: 30,
//         width: 80,
//         decoration: BoxDecoration(
//             color: ColorApp.purple38,
//             borderRadius: BorderRadius.circular(30)),
//         child: Text(
//           "اختصاص",
//           style: TextStyle(color: ColorApp.white),
//         ),
//       ),
//     ),
// }),
