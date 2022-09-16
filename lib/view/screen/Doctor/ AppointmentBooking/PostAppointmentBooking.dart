
import 'package:centerm/view/screen/Doctor/%20AppointmentBooking/postmodel.dart';
import 'package:http/http.dart' as http;


Future<Appointmenttime?> newAppoitment(
String? IdDoctor,
String? hour,
String? IdPatient,
String? date,) async


{
  var Base_URL = "http://ayaarnous-001-site1.ftempurl.com";
  final url = Uri.parse('http://ayaarnous-001-site1.ftempurl.com/api/MobileP/GetAppoitment?DoctorId=$IdDoctor&HourAppoint=$hour:00:00&PatientId=$IdPatient&date=$date');
  final response = await http.post(url);
  if (response.statusCode == 200) {
    print(IdDoctor);
    print("add new Appointment successfully");
    final String responseString = response.body;
    return appointmenttimeFromJson(responseString);
  } else
    return null;
}
