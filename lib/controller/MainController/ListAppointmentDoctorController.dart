import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../core/constant/const.dart';
import '../../data/model/ListAppointmentDoctor.dart';
class Remote_Services_AppointListDoctor {


  static Future<List<ListAppointDoctor>?> fetchAppoint(String id,String date ) async {

    var response = await MainClint.client.get(Uri.parse('$Url_alwadi/api/MobileP/GetAllAppointment?DoctorId=$id&date=$date'));
print(id);
print(id);
print(id);
print(date);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      var x=jsonDecode(jsonString);
      return  listAppointDoctorFromJson(jsonString);
    } else {
      return null;
    }
  }
}
