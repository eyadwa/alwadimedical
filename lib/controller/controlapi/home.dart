// import 'package:centerm/controller/controlapi/control.dart';
// import 'package:get/get.dart';
// import 'helper/dependency.dart' as dep;
//
// import 'package:flutter/material.dart';
// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await dep.init();
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     Get.find<PopularProductController>().getPopularProductList();
//     return GetMaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MainPage(),// RecommendedFoodDetails(), //PopularFoodDetails(),//
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }