import 'package:http/http.dart' as http;
import '../../core/constant/const.dart';
import '../../data/model/department.dart';
class Remote_Services {
  static var client =http.Client();

  static Future<Departments?> fetchdept()async {
    var response = await client.get( Uri.parse('$Url_alwadi/api/MobileP/allDep'));
    if(response.statusCode==200){
      var jsonString =response.body;
      return departmentsFromJson(jsonString);
    }else
    { return null;
    }

  }
}