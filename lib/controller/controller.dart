// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../data/model/department.dart';
// import '../service/remoteServices.dart';
// import 'package:centerm/data/model/department.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart'as http ;
// // class Controller extends GetxController{
// //   var listdata ;
// //   var isloder = true.obs;
// // @override
// //  void onInit(){
// //   super.onInit();
// //   fetchdata();
// // }
// //   Future <void> fetchdata() async {
// //   print("Here");
// //    final respons = await http.get(
// //         Uri.parse("http://ayaarnous-001-site1.ftempurl.com/api/MobileP/allDep"));
// //     if (respons.statusCode == 200) {
// //       Department _depatment = Department.fromJson(jsonDecode(respons.body));
// //       listdata.add(Department(
// //         departmentDescription: _depatment.departmentDescription,
// //         departmentId: _depatment.departmentId,
// //         departmentImg: _depatment.departmentImg,
// //         departmentName: _depatment.departmentName,
// //         doctors: _depatment.doctors,
// //         specializations: _depatment.specializations,
// //       )
// //       );
// //       // isloder=true;
// // return print (listdata);
// //     }else
// //     {
// //       Get.snackbar('Erorr Loding data', 'server responded: ${respons.statusCode}: ${respons.reasonPhrase.toString()}');
// //     }
// //   }
// //
// // }
//
// class deptController extends GetxController {
//   var deptlist =<Department>[].obs;
//   var isLoading =true.obs;
//
// @override
// void onInit(){
//
//   fetcporduct();
//   super.onInit();
// }
//   Future fetcporduct ()async{
//     try {
//       var product =await Remote_Services.fetchdept();
//       if(product!= null){
//         deptlist.value= product.departments;
//
//         isLoading(false);
//         // print (product);
//       }
//     } finally {
//       isLoading(false);
//     }
//     update();
//   }
//
// }