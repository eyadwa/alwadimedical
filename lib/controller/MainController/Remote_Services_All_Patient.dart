
import 'package:http/http.dart' as http;

import '../../core/constant/const.dart';
import '../../data/model/model patient.dart';

class Remote_Services_patient {


  static Future<Patient?> fetchpatient()async {
     final String URL="/allPat";
    var response = await Mainclient.client.get( Uri.parse('$Url_alwadi$URL'));
    if(response.statusCode==200){
      var jsonString =response.body;
      return patientFromJson(jsonString);
    }else
    { return null;
    }
  }
}