import 'package:centerm/data/model/department.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future <Departments?> getdata()
  async {
    var client =http.Client();
     var uri =Uri.parse('http://ayaarnous-001-site1.ftempurl.com/api/MobileP/allDep');
     var response =await client.get(uri);
     if (response.statusCode== 200) {
       var json = response.body;
       print(json);
       return departmentsFromJson(json);
     }
  }
}