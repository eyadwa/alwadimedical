import 'package:http/http.dart' as http;

import '../../core/constant/const.dart';
import '../../data/model/eyad.dart';

class Remote_Services_AppointList {

  static Future<appoint?> fetchAppoint() async {
    var response = await MainClint.client.get(Uri.parse('https://alwadi-mc.sy/api/MobileP/GetAllPatientAPPOi?id=15'));
    if (response.statusCode == 200) {
      var jsonString = response.body;

      return AppointFromJson(jsonString);
    } else {
      return null;
    }
  }
}
