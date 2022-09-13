import 'package:get/get.dart';


import 'controller/MainController/controllerpatient.dart';

class ControllerBindings extends Bindings{
  @override
   void dependencies() {
    Get.put<MainController> (MainController()..tryAutoLogin());
   // Get.put<patientController> (DeptController());
  }

}