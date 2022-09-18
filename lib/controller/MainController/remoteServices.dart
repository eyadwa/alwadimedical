import 'package:http/http.dart' as http;
import '../../data/model/department.dart';
class Remote_Services {
  static var client =http.Client();

  static Future<Departments?> fetchdept()async {
    var response = await client.get( Uri.parse('http://ayaarnous-001-site1.ftempurl.com/api/MobileP/allDep'));
    if(response.statusCode==200){
      var jsonString =response.body;
     return departmentsFromJson(jsonString);
    }else
      { return null;
      }

  }
}