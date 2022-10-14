import 'package:http/http.dart' as http;
import '../../core/constant/const.dart';
import '../../data/model/Specialization.dart';

class Remote_Services_Specializations {

  static Future<Specializations?> fetchspeci( String? idDept)async {
    final String URl="/GetDepartmentSpecialization";
    var response = await Mainclient.client.get( Uri.parse('$Url_alwadi$URl?id=$idDept'));
    if(response.statusCode==200){
      var jsonString =response.body;
      return specializationsFromJson(jsonString);
    }else
    { return null;
    }

  }
}