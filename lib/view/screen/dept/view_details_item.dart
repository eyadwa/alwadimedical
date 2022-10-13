// import 'package:centerm/data/datasource/static.dart';
// import 'package:get/get.dart';
// import 'package:flutter/material.dart';
// import '../../../core/constant/color.dart';
// import '../../../data/datasource/static.dart';
// import '../Doctor/screen_doctor.dart';
//
// class ViewDetailsItem extends StatelessWidget {
//   const ViewDetailsItem({Key? key}) : super(key: key);
//   final int index = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Colors.blueGrey,
//               Colors.white30,
//             ],
//             end: Alignment.topCenter,
//             begin: Alignment.centerRight,
//           ),
//         ),
//         child: Column(
//           children: [
//             Container(
//               width: double.infinity,
//               height: 300,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   opacity: 100,
//                   image: AssetImage(
//                     itemlist[0].UrlImage!,
//                   ),
//                 ),
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const SizedBox(height: 50),
//                   Text(
//                     itemlist[0].title!,
//                     style: const TextStyle(
//                       fontSize: 20,
//                       color: ColorApp.nexpurple,
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 50, right: 13),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         SizedBox(
//                           height: 50,
//                           width: 200,
//                           child: ElevatedButton(
//                             style: ButtonStyle(
//                               backgroundColor: MaterialStateProperty.all<Color>(
//                                   ColorApp.nexpurple),
//                               shape: MaterialStateProperty.all<
//                                   RoundedRectangleBorder>(
//                                 const RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.only(
//                                       bottomRight: Radius.circular(20),
//                                       topLeft: Radius.circular(20)),
//                                   side: BorderSide(color: Colors.black26),
//                                 ),
//                               ),
//                             ),
//                             onPressed: () {
//
//                             },
//                             child: const Text(
//                               "تسجيل",
//                               style: TextStyle(fontSize: 20),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   child: const Center(
//                     child: Text(
//                       "price",
//                       style:
//                           TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
//                     ),
//                   ),
//                   decoration: BoxDecoration(
//                       border: Border.all(width: 1, color:ColorApp.nexpurple),
//                       borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(5),
//                           bottomRight: Radius.circular(20),
//                           topRight: Radius.circular(5),
//                           bottomLeft: Radius.circular(20))),
//                   height: 120,
//                   width: 140,
//                 ),
//                 SizedBox(width: 5),
//                 Container(child: const Center(
//                   child: Text(
//                     "Time",
//                     style:
//                     TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
//                   ),
//                 ),
//                   decoration: BoxDecoration(
//                       border: Border.all(width: 1, color: ColorApp.nexpurple),
//                       borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(5),
//                           bottomRight: Radius.circular(20),
//                           topRight: Radius.circular(5),
//                           bottomLeft: Radius.circular(20))),
//                   height: 120,
//                   width: 140,
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: const [
//                 Padding(
//                   padding: EdgeInsets.all(15),
//                   child: Text(
//                     "التفاصيل",
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.normal,
//                         color: Colors.black),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: Text(
//                     itemlist[0].describtion!,
//                     textAlign: TextAlign.end,
//                     style: const TextStyle(
//                         fontSize: 15,
//                         color: Colors.black,
//                         fontWeight: FontWeight.normal),
//                   ),
//                 ),
//
//               ],
//             ),
//             SizedBox(height: 20),
//             FloatingActionButton(onPressed: (){Get.back();},
//               child: Icon(Icons.arrow_back),
//               backgroundColor:ColorApp.nexpurple
//
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
