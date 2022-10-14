import 'dart:ui';

import 'package:centerm/core/constant/color.dart';
import 'package:centerm/data/model/ListAppointmentDoctor.dart';
import 'package:http/http.dart' as http;
import 'package:centerm/data/model/doctor.dart';
import 'package:centerm/data/model/eyad.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:centerm/data/model/department.dart';
import '../../core/constant/const.dart';
import '../../data/model/Specialization.dart';
import '../../data/model/appointment.dart';
import '../../data/model/loginmodel.dart';
import '../../data/model/model patient.dart';
import 'ListAppointmentDoctorController.dart';
import 'Remote_Service_login.dart';
import 'Remote_Service_Doctor.dart';
import 'Remte_Services_Specialization.dart';
import 'Reomte_Service_Appointment.dart';
import 'Remote_Service_Appoint_new.dart';
import 'Remote_Servicse_.All_dept.dart';
import 'Remote_Services_All_Patient.dart';

class MainController extends GetxController {
  var patientlist = <PatientElement>[].obs;
  var deptlist = <Department>[].obs;
  var spacilist = <Specialization>[].obs;
  var DoctorlistApi = <Doctor>[].obs;
  var appointmentList = <AppointmentElement>[].obs;
  var patientEmptyList = <UsersEntity>[].obs;
  var eyadlist = <AppointmentOne>[].obs;

  var listAppoint = <ListAppointDoctor>[].obs;

  var isLoading = true.obs;
  var isLoadingPatient = true.obs;
  var isLoadingdept = true.obs;
  var isLoadingDoctor = true;
  var isLoadingAppointment = true.obs;
  var isLoadingAppointmentList = true.obs;
  var isLoadingDoctors = true.obs;
  var isLoadingspaci = true.obs;
  var isLoadingpatient = true.obs;
  var isLoadingApointDate = true.obs;
  var isLoadinglistAppoint = true.obs;
   Color colortext=ColorApp.new26;




  final isAuth = BehaviorSubject<bool>();
  Future<void> tryAutoLogin() async {
    final prefs = await SharedPreferences.getInstance();
    String? _token = prefs.getString("token");
    if (_token == null) {
      isAuth.add(false);
      //prefs.clear();
    } else {
      isAuth.add(true);
    }
  }
  @override
  void onInit() {

    fetceyad();
    fetcpatient();
    fetcdept();
    fetcSpeci(iddept);
    fetcDoctor(deptt);
    // fetcappointment(idAppointment, date);
    //  eyadapointment(idAppointment, date);
    login2();
    super.onInit();
  }
  Future login(String username, String password) async {
    try {
      var patient = await Remote_patient.login(username, password);
      if (patient != null) {
        patientEmptyList.value = [patient.users];
        isLoadingPatient(false);
        isAuth.add(true);
      }
    } finally {
      isLoadingPatient(false);
    }
    update();
  }
  Future login2() async {
    try {
      var patient = await Remote_patient.login2();
      if (patient != null) {
        patientEmptyList.value = [patient.users];
        isLoadingPatient(false);
        isAuth.add(true);
      }
    } finally {
      isLoadingPatient(false);
    }
    update();
  }
  Future fetcdept() async {
    try {
      var product = await Remote_Services.fetchdept();
      if (product != null) {
        deptlist.value = product.departments;

        isLoadingdept(false);

      }
    } finally {
      isLoadingdept(false);
    }
    update();
  }
  Future fetcpatient() async {
    try {
      var patientdata = await Remote_Services_patient.fetchpatient();
      if (patientdata != null) {
        patientlist.value = patientdata.patients!;
        isLoadingpatient(false);
      }
    } finally {
      isLoadingpatient(false);
    }
    update();
    patientlist.refresh();
  }
  void AddIdDept(String id) {
    iddept = id;
    update();
  }
  String iddept = "20";
  Future fetcSpeci(String iddept) async {
    try {
      var speci = await Remote_Services_Specializations.fetchspeci(iddept);
      if (speci != null) {
        spacilist.value = speci.specializations;
        isLoadingspaci(false);

        update();
      }
    } finally {
      isLoadingspaci(false);
    }
    update();
  }
  void choisdate( _date, String idDoctor) {
    idAppointment = idDoctor;
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(_date);

    date = _date;

    update();
  }
  var date = DateTime.utc(2022, 9, 20);

  String idAppointment = "35";

  Future fetcappointment(idAppointment, date) async {
    try {  update();
    var Appointment = await Remote_Services_Appointment.fetchAppointment(date.toString(), idAppointment.toString());  update();
    if (Appointment != null) {

      var appointments = Appointment.appointment != null ? Appointment.appointment! : <AppointmentElement>[];


      appointmentList.value = appointments;
      update();
      isLoadingAppointment(false);
      update();

    }else{

    }
    } finally {
      isLoadingAppointment(true);
    }
    update();
  }
  // Future eyadapointment(idAppointment, date) async {
  //   try {
  //     var Appointment = await Remote_Services_Appointment.fetchAppointment(date.toString(), idAppointment.toString());  update();
  //     if (Appointment != null) {
  //
  //       appointmentList.value = Appointment.appointment!;
  //
  //       update();
  //
  //       isLoadingAppointment(false);
  //       update();
  //
  //     }else{
  //
  //     }
  //   } finally {
  //     isLoadingAppointment(true);
  //   }
  //   update();
  // }



  Future fetceyad() async {
    try {
      var data = await Remote_Services_AppointList.fetchAppoint();
      if (data != null) {
        eyadlist.value = data.appointments;
        isLoadingApointDate(false);
      }
    } finally {
      isLoadingApointDate(false);

    }
    update();
    patientlist.refresh();
  }

  static void AddNamedept(String namedeptt) {
    deptt = namedeptt;
    return print(deptt);
  }
  static String deptt = "تقويم الأسنان والفكين";
  Future fetcDoctor(String dept) async {
    isLoadingDoctor = true;
    update();
    try {
      var Doctor = await Remote_Services_Doctor.fetchDoctor(dept);
      if (Doctor != null) {
        DoctorlistApi.value = Doctor.doctors;
        isLoadingDoctor = false;
        update();
      }
    } finally {
      isLoadingDoctor = false;
      update();
    }
  }
  void changeDate(String id,dateAppoint )
  {
    // String dateAppoint = DateFormat('yyyy-MM-dd').format(DateTime.now());

    isssd=id;
    datss =dateAppoint;

    update();

  }

  String isssd='';
  String datss ='';
  //DateFormat('yyyy-MM-dd').format(DateTime.now());
  Future ListAppointDoctorApi (String iddoctordate, String dateappoint) async {
    try {
      update();
      var dataer = await Remote_Services_AppointListDoctor.fetchAppoint(iddoctordate,dateappoint);

      update();
      if (dataer != null) {
        update();
        listAppoint.value=dataer;
        update();
        isLoadinglistAppoint(false);
        update();
      }
    } finally {
      isLoadinglistAppoint(false);

    }
    update();
  }
  void deletetext (){
    result ="";
    update();
  }
  String result="";
  Future newAppoitment2(
      String? IdDoctor,
      String? hour,
      String? IdPatient,
      String? date,) async

  {

    final url = Uri.parse('$Url_alwadi/GetAppoitment?DoctorId=$IdDoctor&HourAppoint=$hour:00:00&PatientId=$IdPatient&date=$date');
    final response = await http.post(url);
    if (response.statusCode == 200) {

      final String responseString = response.body;
      String x= '"هذا الموعد محجوز"';
      String y= '"هذا التوقيت خارج أوقات الدوام"';

      if (responseString== x)
      {
        result='"هذا الموعد محجوز"';
        update();


      }else if (responseString==y)
      {
        result="هذا التوقيت خارج أوقات الدوام";
        update();
      }else{
        result="تم التسجيل بنجاح";
        update();

      }

      return result;
    } else
      return null;
  }

// Future<void> _openFacebook() async {
//   String fbProtocolUrl;
//   if (Platform.isIOS) {
//     fbProtocolUrl = 'fb://profile/{your-page-id}';
//   } else {
//     fbProtocolUrl = 'fb://page/{your-page-id}';
//   }
//
//   String fallbackUrl = 'https://www.facebook.com/{your-page-uri}';
//
//   try {
//     Uri fbBundleUri = Uri.parse(fbProtocolUrl);
//     var canLaunchNatively = await canLaunchUrl(fbBundleUri);
//
//     if (canLaunchNatively) {
//       launchUrl(fbBundleUri);
//     } else {
//       await launchUrl(Uri.parse(fallbackUrl),
//           mode: LaunchMode.externalApplication);
//     }
//   } catch (e, st) {
//     // Handle this as you prefer
//   }
// }










}
