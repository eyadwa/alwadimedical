import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/MainController/controllerpatient.dart';
import '../../core/constant/color.dart';
import '../widget/Specialization/WidgetSpecialization.dart';
import '../widget/Specialization/WidgetSpecialzationGridview.dart';
import '../widget/dept/ListDepthome.dart';
import '../widget/drawer/navigation_drawer.dart';
import '../widget/first screen/whatsapp.dart';
import 'Doctor/ListDoctor.dart';

class home extends StatefulWidget {
  const home({
    Key? key,
  }) : super(key: key);

  @override
  _home createState() => _home();
}



class _home extends State<home> {

  @override
  Widget build(BuildContext context) {
    TextEditingController? _searchController;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        endDrawer: NavigationDrawerWidget(),
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          foregroundColor: ColorApp.nexpurple,
          title: TextFormField(
            textAlign: TextAlign.right,
            controller: _searchController,
            decoration: InputDecoration(
              enabled: false,
              hintText: "اختر القسم الخاص بك",
              hintStyle: TextStyle(fontSize: 15),
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
              // label: Container(
              //   margin: EdgeInsets.symmetric(horizontal: 9),
              //   child: Text(
              //     "بحث",
              //     style: TextStyle(fontSize: 20, color: ColorApp.nexpurple),
              //   ),
              // ),
              suffixIcon: Icon(
                Icons.search_rounded,
                color: ColorApp.nexpurple,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
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
              Padding(padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10)),
              SizedBox(height: 20),
              ListDepthome(),
              SizedBox(height: 20),
              SingleChildScrollView(
                child: Container(
                  height: 600,
                  width: 200,
                  child: GetBuilder<MainController>(builder: (context) {
                    return Container(
                        height: 800,
                        width: 200,
                         child:
                         SpecializationWidgetGridView()
                        );
                  }),
                ),
              )

              // Container(
              //   height: 500,
              //   width: 200,
              //   child: GetBuilder<MainController>(
              //       builder: (Controller) => GridView.builder(
              //             gridDelegate:
              //                 SliverGridDelegateWithFixedCrossAxisCount(
              //                     crossAxisSpacing: 1,
              //                     mainAxisSpacing: 1,
              //                     crossAxisCount: 2),
              //             itemCount: 4,
              //             itemBuilder: (context, index) => Container(
              //               margin: EdgeInsets.all(10),
              //               padding: EdgeInsets.all(10),
              //               child: InkWell(
              //                 onTap: () {
              //                   Get.to(DoctorsSp());
              //                   MainController.AddNamedept(
              //                       "${Controller.deptlist[index].departmentName}");
              //                   print(
              //                       "${Controller.spacilist[index].specializationName}");
              //                   Controller.fetcDoctor(
              //                       "${Controller.spacilist[index].specializationName}");
              //                 },
              //                 child: Container(
              //                   width: 200,
              //                   height: 200,
              //                   decoration: BoxDecoration(
              //                     borderRadius: BorderRadius.circular(25),
              //                     boxShadow: [
              //                       BoxShadow(
              //                         color: Colors.grey.withOpacity(0.5),
              //                         spreadRadius: 5,
              //                         blurRadius: 8,
              //                         offset: Offset(
              //                             1, 9), // changes position of shadow
              //                       ),
              //                     ],
              //                     image: DecorationImage(
              //                       image: MemoryImage(base64Decode(
              //                           "${Controller.spacilist[index].specializationmg}")),
              //                       fit: BoxFit.fitHeight,
              //                     ),
              //                   ),
              //                   child: Text(
              //                     Controller
              //                         .spacilist[index].specializationName!,
              //                     textAlign: TextAlign.end,
              //                     style: TextStyle(
              //                         color: Colors.black,
              //                         fontSize: 15,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                 ),
              //               ),
              //             ),
              //           )),
              // ),
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
