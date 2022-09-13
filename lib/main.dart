import 'package:centerm/controller/MainController/controllerpatient.dart';
import 'package:centerm/view/screen/auth/login.dart';
import 'package:centerm/view/screen/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Bindings.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization(null);
  Get.put(MainController());
  runApp(MyApp());
}

Future initialization(BuildContext? context) async {
  await Future.delayed(Duration(seconds: 1));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    MainController mc = Get.find();
    return  GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialBinding: ControllerBindings(),
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home:mc.isAuth?home():Login());
  }
}
