
import 'package:http/http.dart' as http;

import '../../core/constant/const.dart';
import '../../data/model/doctor.dart';

class Remote_Services_Doctor {
  static var client =http.Client();

  static Future<Doctors?> fetchDoctor(String dept)async {
    var response = await client.get( Uri.parse('$Url_alwadi/api/MobileP/GetSpecializationDoctor?name=$dept'));
    if(response.statusCode==200){
      var jsonString =response.body;
      return doctorsFromJson(jsonString);
    }else
    { return null;
    }
  }
}