// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../../../core/constant/color.dart';
// import '../../../data/datasource/static.dart';
// import '../../screen/dept/view_item.dart';
//
// class gredview extends StatelessWidget {
//   const gredview({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//       Get.to(ViewItem());
//       },
//       child: GridView.builder(
//         gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//             maxCrossAxisExtent: 400,
//             childAspectRatio: 3 / 2,
//             crossAxisSpacing: 1,
//             mainAxisSpacing: 1),
//         itemCount: centerlist.length,
//         itemBuilder: (context, index) {
//           return Card(
//             color: ColorApp.white38,
//             shape: RoundedRectangleBorder(
//               side: const BorderSide(color: Colors.white70, width: 1),
//               borderRadius: BorderRadius.circular(30),
//             ),
//             margin: EdgeInsets.all(5.0),
//             child: Container(
//               margin: EdgeInsets.all(5),
//               height: double.infinity,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(30),
//                   image: DecorationImage(opacity: 75,
//                       image: AssetImage(
//                         centerlist[index].image!,
//                       ),
//                       fit: BoxFit.fill)),
//               padding: EdgeInsets.all(1),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Text(
//                     centerlist[index].deptes!,
//                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                   )
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
