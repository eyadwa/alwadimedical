import 'package:http/http.dart' as http;

import '../../core/constant/const.dart';
import '../../data/model/appointment.dart';

class Remote_Services_Appointment {

  static Future<Appointment?> fetchAppointment(String date, String id) async {
    final String URL="/GetReversedAppointment";
    var response = await Mainclient.client.get(Uri.parse(
        '$Url_alwadi$URL?id=$id&date=$date'));
    if (response.statusCode == 200) {

      var jsonString = response.body;
      return appointmentFromJson(jsonString);
    } else {
      return null;
    }
  }

}
