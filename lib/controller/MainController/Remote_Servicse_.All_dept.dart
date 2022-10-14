import 'package:http/http.dart' as http;
import '../../core/constant/const.dart';
import '../../data/model/department.dart';
class Remote_Services {

  static Future<Departments?> fetchdept()async {
    final URL="/allDep";

    var response = await Mainclient.client.get( Uri.parse('$Url_alwadi$URL'));
    if(response.statusCode==200){
      var jsonString =response.body;
      return departmentsFromJson(jsonString);
    }else
    { return null;
    }

  }
}