// import 'package:centerm/controller/controlapi/const.dart';
// import 'package:centerm/controller/controlapi/control.dart';
// import 'package:centerm/controller/controlapi/getservec.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import 'api.dart';
//
// Future <void> init()async {
//   //api client
//   Get.lazyPut(()=>ApiClient(appBaseUrl: AppConstants.BASE_URL));
//
//   //repository
//   Get.lazyPut(() => PopularProductRepository(apiClient:Get.find()));
//
//   //controller
//   Get.lazyPut(() => PopularProductController(popularProductRepository:Get.find()));
// }