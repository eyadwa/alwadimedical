
import 'package:http/http.dart' as http;

import '../../core/constant/const.dart';
import '../../data/model/model patient.dart';

class Remote_Services_patient {


  static Future<Patient?> fetchpatient()async {
    var response = await MainClint.client.get( Uri.parse('$Url_alwadi/api/MobileP/allPat'));
    if(response.statusCode==200){
      var jsonString =response.body;
      return patientFromJson(jsonString);
    }else
    { return null;
    }
  }
}