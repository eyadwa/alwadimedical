
import 'package:http/http.dart' as http;

import '../../core/constant/const.dart';
import '../../data/model/doctor.dart';

class Remote_Services_Doctor {

  static Future<Doctors?> fetchDoctor(String dept)async {
    final String URl="/GetSpecializationDoctor";
    var response = await Mainclient.client.get( Uri.parse('$Url_alwadi$URl?name=$dept'));
    if(response.statusCode==200){
      var jsonString =response.body;
      return doctorsFromJson(jsonString);
    }else
    { return null;
    }
  }
}