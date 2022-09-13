// import 'package:centerm/data/datasource/static.dart';
// import 'package:flutter/material.dart';
//
// import '../../../controller/controller.dart';
// import '../../../controller/test/apitest.dart';
// import '../../../core/constant/color.dart';
// import '../../../data/model/department.dart';
// import 'package:get/get.dart';
//
// // ignore: must_be_immutable
// class buildlist extends StatefulWidget {
//   buildlist({
//     Key? key,required this.index
//   }) : super(key: key);
// int index;
//   @override
//   _buildlist createState() => _buildlist();
// }
//
//
// class _buildlist extends State<buildlist> {
//   List<Department>? data;
//   var isLoaded = false;
//
//   //final Controller _controller = Get.find<Controller>();
//   final deptController _controllerput = Get.put(deptController());
//
//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }
//
//   getData() async {
//     var response = await RemoteService().getdata();
//     var data = response?.departments;
//     print(data?.length);
//     if (data != null) {
//       setState(() {
//         isLoaded = true;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Container(
//         alignment: Alignment.center,
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         margin: EdgeInsets.only(left: 8),
//         height: 30,
//         width: 90,
//         decoration: BoxDecoration(
//             color: Color(0xffFFD0AA), borderRadius: BorderRadius.circular(30)),
//         child: Text(
//           _controllerput.deptlist.length > index ? "${_controllerput.deptlist[index].departmentName}" : "Empty Name",
//           style: TextStyle(color: Color(0xffFC9535)),
//         ),
//       ),
//     );
//   }
// }
