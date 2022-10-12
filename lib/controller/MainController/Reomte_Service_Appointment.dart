import 'package:http/http.dart' as http;

import '../../core/constant/const.dart';
import '../../data/model/appointment.dart';

class Remote_Services_Appointment {
  static var client = http.Client();

  static Future<Appointment?> fetchAppointment(String date, String id) async {
    print(date);
    print(id);
    var response = await client.get(Uri.parse(
        '$Url_alwadi/api/MobileP/GetReversedAppointment?id=$id&date=$date'));
    if (response.statusCode == 200) {

      var jsonString = response.body;
      return appointmentFromJson(jsonString);
    } else {
      return null;
    }
  }

}
