

import 'package:http/http.dart' as http;
String result="";
Future newAppoitment(
String? IdDoctor,
String? hour,
String? IdPatient,
String? date,) async

{

  final url = Uri.parse('http://ayaarnous-001-site1.ftempurl.com/api/MobileP/GetAppoitment?DoctorId=$IdDoctor&HourAppoint=$hour:00:00&PatientId=$IdPatient&date=$date');
  final response = await http.post(url);
  if (response.statusCode == 200) {
    print(IdDoctor);
    print(IdPatient);
    print("add new Appointment successfully");
    final String responseString = response.body;
    print(responseString);

    if (responseString=="هذا الموعد محجوز")
      {
       result="هذا الموعد محجوز";

      }else if (responseString=="هذا التوقيت خارج أوقات الدوام")
      {
      result="هذا التوقيت خارج أوقات الدوام";

    }else{
      result="تم التسجيل بنجاح";
    }

    return result;
  } else
    return null;






}
