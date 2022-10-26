import '../../core/constant/const.dart';
import '../../data/model/loginmodel.dart';

class Remote_patient {
  static Future<Users?> login(String username, String password) async {
    var response = await Mainclient.client.get(Uri.parse(
        '$Url_alwadi/logIn?name=$username&password=$password'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print("Login Response $jsonString");
      return usersFromJson(jsonString);
    } else {
      return null;
    }
  }
  static Future<Users?> login2() async {
    var response = await Mainclient.client.get(Uri.parse(
        '$Url_alwadi/logIn?name=سالي&password=123456'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return usersFromJson(jsonString);
    } else {
      return null;
    }
  }
}
