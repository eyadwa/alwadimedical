import 'package:http/http.dart'as http;

import 'modeltest.dart';

class network {
  Future<Depter?> geting () async{
    var client =http.Client();
    var uri =Uri.parse('http://ayaarnous-001-site1.ftempurl.com/api/MobileP/allDep');

    var response =await client.get(uri);

    if(response.statusCode==200){
      var json=response.body;
     return depterFromJson(json);
    }
  }
}


