import 'package:http/http.dart' as http;

import '../../data/model/eyad.dart';

class Remote_Services_AppointList {
  static var client = http.Client();

  static Future<Eyad?> fetchAppoint() async {
    var response = await client.get(Uri.parse('http://ayaarnous-001-site1.ftempurl.com/api/MobileP/GetAllPatientAPPOi?id=18'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return eyadFromJson(jsonString);
    } else {
      return null;
    }
  }
}
