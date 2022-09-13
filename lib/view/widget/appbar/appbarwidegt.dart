// import 'package:flutter/material.dart';
//
// import '../../../core/constant/color.dart';
// import '../../../core/constant/const.dart';
//
// class AppBarWidget extends StatelessWidget {
//   const AppBarWidget ({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text(namecenter),
//       backgroundColor: ColorApp.purpleAccent,
//       centerTitle: true,
//       leading: IconButton(
//         icon: const Icon(Icons.menu),
//         onPressed: () {},
//       ),
//       actions: [
//         IconButton(
//           icon: Icon(Icons.notifications),
//           onPressed: () {},
//         ),
//         IconButton(
//           icon: Icon(Icons.search),
//           onPressed: () {},
//         ),
//       ],
//       flexibleSpace: Container(
//         decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 ColorApp.purpleAccent, ColorApp.red
//               ],
//               end: Alignment.centerLeft,
//               begin: Alignment.centerRight,
//             )
//         ),
//       ),
//       elevation: 20,
//       bottom:  TabBar(
//           tabs:[
//             Tab( icon:Icon(Icons.home),text: "Home"),
//             Tab( icon:Icon(Icons.home),text: "Home"),
//             Tab( icon:Icon(Icons.home),text: "Home"),
//             Tab( icon:Icon(Icons.home),text: "Home"),
//           ]
//       ),
//
//     );
//   }
// }
