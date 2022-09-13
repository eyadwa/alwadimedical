// import 'dart:convert';
//
// import 'package:centerm/data/model/doctor.dart';
// import 'package:flutter/foundation.dart';
// import 'package:http/http.dart' as http;
//
// class NetWorkRequest {
//   static const String url =
//       'http://ayaarnous-001-site1.ftempurl.com/api/MobileP/GetSpecializationDoctor?name=bayan';
//
//   static List<doctormodel> getdata(String responseBody) {
//     var list = json.decode(responseBody) as List<dynamic>;
//     List<doctormodel> doctors =
//         list.map((model) => doctormodel.fromJson(model)).toList();
//     return doctors;
//   }
//
//   static Future<List<doctormodel>> fetchPhoto() async {
//     final response = await http.get(Uri.parse('$url'));
//     if (response.statusCode == 200) {
//       return compute(getdata, response.body);
//     } else {
//       throw Exception('cant get data');
//     }
//   }
// }
