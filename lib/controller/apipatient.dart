// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;
//
// class Apipateint {
//   Future fatchdata() async {
//     var request = http.Request(
//         'GET',
//         Uri.parse(
//             'http://ayaarnous-001-site1.ftempurl.com/api/MobileP/Getpatient?id=11'));
//     http.StreamedResponse response = await request.send();
//     final jasonresponse =
//         convert.jsonDecode(await response.stream.bytesToString());
//     dynamic list = jasonresponse;
//     print (list);
//     return list;
//   }
// }
