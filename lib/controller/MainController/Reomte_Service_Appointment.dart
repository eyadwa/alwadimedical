import 'package:http/http.dart' as http;

import '../../data/model/appointment.dart';

class Remote_Services_Appointment {
  static var client = http.Client();

  static Future<Appointment?> fetchAppointment(String date, String id) async {
    var response = await client.get(Uri.parse(
        'http://ayaarnous-001-site1.ftempurl.com/api/MobileP/GetReversedAppointment?id=$id&date=$date'));
    if (response.statusCode == 200) {

      var jsonString = response.body;
      return appointmentFromJson(jsonString);
    } else {
      return null;
    }
  }

}
