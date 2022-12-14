
import 'package:http/http.dart' as http;

import '../../data/model/doctor.dart';

class Remote_Services_Doctor {
  static var client =http.Client();

  static Future<Doctors?> fetchDoctor(String dept)async {
    var response = await client.get( Uri.parse('http://ayaarnous-001-site1.ftempurl.com/api/MobileP/GetSpecializationDoctor?name=$dept'));
    if(response.statusCode==200){
      var jsonString =response.body;
      return doctorsFromJson(jsonString);
    }else
    { return null;
    }
  }
}