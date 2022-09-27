import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../data/model/ListAppointmentDoctor.dart';
import '../../data/model/eyad.dart';

class Remote_Services_AppointListDoctor {
  static var client = http.Client();

  static Future<List<ListAppointDoctor>?> fetchAppoint(String idDoctor ,String Date) async {
    var response = await client.get(Uri.parse('http://ayaarnous-001-site1.ftempurl.com/api/MobileP/GetAllAppointment?DoctorId=$idDoctor&date=$Date'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var x=jsonDecode(jsonString);

      return  listAppointDoctorFromJson(jsonString);
    } else {
      return null;
    }
  }
}
