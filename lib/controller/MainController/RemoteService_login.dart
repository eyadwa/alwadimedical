import 'package:http/http.dart' as http;
import '../../data/model/Specialization.dart';
import '../../data/model/loginmodel.dart';

class Remote_patient{
  static var client =http.Client();

  static Future<Users?> fetchPatient(String username,String password)async {
    var response = await client.get( Uri.parse('http://ayaarnous-001-site1.ftempurl.com/api/MobileP/logIn?name=$username&password=$password'));
    if(response.statusCode==200){
      var jsonString =response.body;
      return usersFromJson(jsonString);
    }else
    { return null;
    }

  }
}