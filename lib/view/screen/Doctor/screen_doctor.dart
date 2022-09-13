// import 'package:centerm/data/model/doctor.dart';
// import 'package:flutter/material.dart';
//
// import '../../../controller/apidoctor.dart';
// import '../../../core/constant/color.dart';
// import '../../../core/constant/const.dart';
// import '../../../data/datasource/static.dart';
// import '../../widget/appbar/appbarwidegt.dart';
//
// class DoctorView extends StatelessWidget {
//   const DoctorView({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(namecenter),
//           centerTitle: true,
//           flexibleSpace: Container(decoration: appbarthem),
//         ),
//         body: Container(
//           child: FutureBuilder(
//               future: NetWorkRequest.fetchPhoto(),
//               builder: (context, AsyncSnapshot<dynamic> snapshot) {
//                 if (snapshot.hasData) {
//                   List<dynamic> _responseList = snapshot.data;
//                   List<doctormodel> _listdata = _responseList
//                       .map((e) => doctormodel.fromJson(e))
//                       .toList();
//                   return GridView.builder(
//                       gridDelegate:
//                           const SliverGridDelegateWithMaxCrossAxisExtent(
//                               maxCrossAxisExtent: 400,
//                               childAspectRatio: 3 / 2,
//                               crossAxisSpacing: 1,
//                               mainAxisSpacing: 1),
//                       itemCount: _listdata.length,
//                       itemBuilder: (context, index) {
//                         return Container(
//                           decoration: BoxDecoration(
//                               border: Border.all(
//                                   width: 5, color: ColorApp.nexpurple),
//                               borderRadius: const BorderRadius.only(
//                                   topLeft: Radius.circular(20),
//                                   bottomRight: Radius.circular(20),
//                                   topRight: Radius.circular(20),
//                                   bottomLeft: Radius.circular(20))),
//                           // height: 10,
//                           // width: 50,
//                           child: Padding(
//                             padding: const EdgeInsets.all(15.0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Column(
//                                   children: [
//                                     CircleAvatar(
//                                       radius: 30,
//                                       backgroundColor: ColorApp.gery,
//                                       child: ClipRRect(
//                                         borderRadius:
//                                             BorderRadius.circular(30.0),
//                                         child: Image.asset(
//                                           _listdata[index].doctorImg,
//                                         ),
//                                       ),
//                                     ),
//                                     Text(
//                                       _listdata[index].doctorName,
//                                       style: TextStyle(fontSize: 15),
//                                     )
//                                   ],
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                 ),
//                                 SizedBox(width: 5),
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       doctorlist[index].describtion!,
//                                       style: TextStyle(fontSize: 15),
//                                     )
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),
//                         );
//                       });
//                 } else
//                   return Center(child: CircularProgressIndicator());
//               }),
//         ));
//   }
// }
