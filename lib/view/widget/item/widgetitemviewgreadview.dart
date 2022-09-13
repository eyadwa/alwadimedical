// import 'dart:convert';
//
// import 'package:centerm/controller/apipatient.dart';
// import 'package:centerm/controller/controller.dart';
// import 'package:centerm/controller/test/apitest.dart';
// import 'package:centerm/data/model/department.dart';
// import 'package:centerm/view/screen/dept/view_details_item.dart';
// import 'package:flutter/material.dart';
// import '../../../core/constant/color.dart';
// import 'package:get/get.dart';
// import 'package:get/instance_manager.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
//
// import '../../../data/model/model patient.dart';
//
// // ignore: must_be_immutable
// class gredviewitem extends StatefulWidget {
//   const gredviewitem({Key? key}) : super(key: key);
//
//   @override
//   _gredviewitem createState() => _gredviewitem();
// }
//
// class _gredviewitem extends State<gredviewitem> {
//   // gredviewitem({Key? key}) : super(key: key);
//  //List<Department>? data;
//  // var isLoaded = false;
//  // final deptController _controllerput = Get.put(deptController());
//
//   //final Controller _controller = Get.find<Controller>();
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   getData();
//   // }
//   //
//   // getData() async {
//   //   var response = await RemoteService().getdata();
//   //   var data = response?.departments;
//   //   print(data?.length);
//   //   if (data != null) {
//   //     setState(() {
//   //       isLoaded = true;
//   //     });
//   //   }
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(color: Colors.white,
//       child: FutureBuilder(
//         future: deptController().fetcporduct(),
//         builder: (BuildContext context, AsyncSnapshot snapshot) {
//           if (snapshot.hasData) {
//             return InkWell(
//               onTap: () {
//                 Get.to(ViewDetailsItem());
//                 // RemoteService().getdata();
//                 // Apipateint().fatchdata();
//                 // Controller().fetchdata();
//               },
//               child: GridView.builder(
//                   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                       maxCrossAxisExtent: 400,
//                       childAspectRatio: 3 / 2,
//                       crossAxisSpacing: 1,
//                       mainAxisSpacing: 1),
//                   itemCount: _controllerput.deptlist.length,
//                   itemBuilder: (context, index) {
//                     return Card(
//                       color: ColorApp.white38,
//                       shape: RoundedRectangleBorder(
//                         side: const BorderSide(color: Colors.white70, width: 1),
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                       margin: EdgeInsets.all(5.0),
//                       // child: Container(
//                       //   margin: EdgeInsets.all(5),
//                       //   height: double.infinity,
//                       //   decoration: BoxDecoration(
//                       //     borderRadius: BorderRadius.circular(30),
//                       //   ),
//                       //   width: 200,
//                       //   padding: EdgeInsets.all(1),
//                       //   child: Column(
//                       //     mainAxisAlignment: MainAxisAlignment.center,
//                       //     children: [
//                       //       // Image.memory(
//                       //       //   base64Decode(
//                       //       //       _controllerput.deptlist[index].departmentImg!),
//                       //       //   width: 200,
//                       //       //   height: 200,
//                       //       // ),
//                       //       // Text(
//                       //       //   _controllerput.deptlist.length > index
//                       //       //       ? "${_controllerput.deptlist[index].departmentName}"
//                       //       //       : "Empty Name",
//                       //       //   style: TextStyle(fontSize: 10),
//                       //       // ),
//                       //     ],
//                       //   ),
//                       // ),
//                     );
//                   }),
//             );
//           } else
//             return Center(
//                 child: LinearProgressIndicator(
//               color: Colors.purpleAccent,
//             ));
//         },
//       ),
//     );
//   }
// }
//
// // InkWell(
// // onTap: () {
// // Get.to(ViewDetailsItem());
// // },
// // child: GridView.builder(
// // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
// // maxCrossAxisExtent: 400,
// // childAspectRatio: 3 / 2,
// // crossAxisSpacing: 1,
// // mainAxisSpacing: 1),
// // itemCount: itemlist.length,
// // itemBuilder: (context, index) {
// // return Card(
// // color: ColorApp.white38,
// // shape: RoundedRectangleBorder(
// // side: const BorderSide(color: Colors.white70, width: 1),
// // borderRadius: BorderRadius.circular(30),
// // ),
// // margin: EdgeInsets.all(5.0),
// // child: Container(
// // margin: EdgeInsets.all(5),
// // height: double.infinity,
// // decoration: BoxDecoration(
// // borderRadius: BorderRadius.circular(30),
// // image: DecorationImage(opacity: 75,
// // image: AssetImage(
// // itemlist[index].UrlImage!,
// // ),
// // fit: BoxFit.fill)),
// // padding: EdgeInsets.all(1),
// // child: Column(
// // mainAxisAlignment: MainAxisAlignment.center,
// // children: [],
// // ),
// // ),
// // );
// // }),
// // );
