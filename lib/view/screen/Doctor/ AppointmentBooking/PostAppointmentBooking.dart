import 'package:http/http.dart' as http;
import '../../../../core/constant/const.dart';


String result="";
Future newAppoitment(
String? IdDoctor,
String? hour,
String? IdPatient,
String? date,) async {
final String URL="/GetAppoitment";

   final url = Uri.parse('$Url_alwadi$URL?DoctorId=$IdDoctor&HourAppoint=$hour&PatientId=$IdPatient&date=$date');
  final response = await http.post(url);
  if (response.statusCode == 200) {

    print("add new Appointment successfully");
    final String responseString = response.body;
    return result;
  } else
    return null;






}
