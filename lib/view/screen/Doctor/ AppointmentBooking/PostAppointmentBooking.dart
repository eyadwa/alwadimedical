

import 'package:http/http.dart' as http;
String result="";
Future newAppoitment(
String? IdDoctor,
String? hour,
String? IdPatient,
String? date,) async {


   final url = Uri.parse('https://alwadi-mc.sy/api/MobileP/GetAppoitment?DoctorId=$IdDoctor&HourAppoint=$hour&PatientId=$IdPatient&date=$date');
   print(IdDoctor);
   print(hour);
   print(IdPatient);
   print(date);
// final url = Uri.parse('https://alwadi-mc.sy/api/MobileP/GetAppoitment?DoctorId=34&HourAppoint=9:30&PatientId=15&date=2022-10-19');
  final response = await http.post(url);
  if (response.statusCode == 200) {

    print("add new Appointment successfully");
    final String responseString = response.body;


    // if (responseString=="هذا الموعد محجوز")
    //   {
    //    result="هذا الموعد محجوز";
    //
    //   }else if (responseString=="هذا التوقيت خارج أوقات الدوام")
    //   {
    //   result="هذا التوقيت خارج أوقات الدوام";
    //
    // }else{
    //   result="تم التسجيل بنجاح";
    // }

    return result;
  } else
    return null;






}
