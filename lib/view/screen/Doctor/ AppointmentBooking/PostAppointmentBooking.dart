// import 'package:centerm/data/model/patietmmmm.dart';
// import 'package:http/http.dart' as http;
//
// Future<> SignIn(
// String? DoctorId,
// String? HourAppoin,
// String? PatientId,
// String? date,
// ) async
//
// {
//   var Base_URL = "http://ayaarnous-001-site1.ftempurl.com";
//   final url = Uri.parse('$Base_URL/api/MobileP/GetAppoitment?DoctorId=$DoctorId=&HourAppoint=$HourAppoin&PatientId=$PatientId&date=$date');
//   final response = await http.post(url);
//   if (response.statusCode == 200) {
//     print("add new client has been successfully");
//     final String responseString = response.body;
//     return addpatientFromJson(responseString);
//   } else
//     return null;
// }
