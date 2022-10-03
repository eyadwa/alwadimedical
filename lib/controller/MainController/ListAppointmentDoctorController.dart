import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../data/model/ListAppointmentDoctor.dart';
import '../../data/model/eyad.dart';

class Remote_Services_AppointListDoctor {
  static var client = http.Client();


  static Future<List<ListAppointDoctor>?> fetchAppoint(String id,String date ) async {

    var response = await client.get(Uri.parse('http://ayaarnous-001-site1.ftempurl.com/api/MobileP/GetAllAppointment?DoctorId=$id&date=$date'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var x=jsonDecode(jsonString);
      return  listAppointDoctorFromJson(jsonString);
    } else {
      return null;
    }
  }
}
