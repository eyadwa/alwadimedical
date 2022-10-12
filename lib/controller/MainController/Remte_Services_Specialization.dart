import 'package:http/http.dart' as http;
import '../../core/constant/const.dart';
import '../../data/model/Specialization.dart';

class Remote_Services_Specializations {
  static var client =http.Client();

  static Future<Specializations?> fetchspeci( String? idDept)async {
    var response = await client.get( Uri.parse('$Url_alwadi/api/MobileP/GetDepartmentSpecialization?id=$idDept'));
    if(response.statusCode==200){
      var jsonString =response.body;
      return specializationsFromJson(jsonString);
    }else
    { return null;
    }

  }
}