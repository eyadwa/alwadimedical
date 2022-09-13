import 'package:centerm/data/model/doctor.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


import 'package:centerm/data/model/department.dart';
import 'package:http/http.dart' as http;
import '';
import '../../data/model/Specialization.dart';
import '../../data/model/appointment.dart';
import '../../data/model/loginmodel.dart';
import '../../data/model/model patient.dart';
import 'RemoteService_login.dart';
import 'Remote_Service_Doctor.dart';
import 'Remte_Services_Specialization.dart';
import 'Reomte_Service_Appointment.dart';
import 'remoteServices.dart';
import 'Remote_Services_patient.dart';

class MainController extends GetxController {
  var patientlist = <PatientElement>[].obs;
  var deptlist = <Department>[].obs;
  var spacilist = <Specialization>[].obs;
  var DoctorlistApi = <Doctor>[].obs;
  var appointmentList = <AppointmentElement>[].obs;
  var patientList = <Emptydfdf>[].obs;



  var isLoadingPatient = true.obs;
  var isLoadingdept = true.obs;
  var isLoadingDoctor = true;
  var isLoadingAppointment= true.obs;
  var isLoadingDoctors = true.obs;
  var isLoadingspaci = true.obs;
  var isLoadingpatient = true.obs;

  var isAuth = false;


  Future<void> tryAutoLogin()async{
    print("saddddddddddddddddddddddddddddddddddddddddddd");
    final prefs = await SharedPreferences.getInstance();
    String? _token =  prefs.getString("token");
    if(_token==null){
      isAuth =false;
      //prefs.clear();
    }
    else {
      isAuth==true;
    }

  }



  @override
  void onInit() {
    fetcpatient();
    fetcdept();
    fetcSpeci(iddept);
    fetcDoctor(deptt);
    fetcappointment(idAppointment,date);
    super.onInit();
  }


  Future fetcdept() async {
    try {
      var product = await Remote_Services.fetchdept();
      if (product != null) {
        deptlist.value = product.departments;

        isLoadingdept(false);
        // print (product);
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


   void AddIdDept (String id) {
     iddept=  id;
update();
  }
String iddept="20";
  Future fetcSpeci(String iddept) async {
    try {
      var speci = await Remote_Services_Specializations.fetchspeci(iddept);
      if (speci != null) {
        spacilist.value = speci.specializations;
        isLoadingspaci(false);
      }
    } finally {
      isLoadingspaci(false);
    }
    update();
  }


 static void AddNamedept (String namedeptt) {

   deptt=  namedeptt;
    return print(deptt);
  }
 static String deptt="تقويم الأسنان والفكين";
  Future fetcDoctor(String dept) async {
    isLoadingDoctor=true;
    update();
    try {
      var Doctor = await Remote_Services_Doctor.fetchDoctor(dept);
      if (Doctor != null) {
        DoctorlistApi.value = Doctor.doctors;
        isLoadingDoctor=false;
    update();
      }
    } finally {
      isLoadingDoctor=false;
      update();
    }
  }


  void choisdate (DateTime _date,String idDoctor){
    idAppointment=idDoctor;
    date=_date;
    update();
  }
  var date=DateTime.utc(2022,9,8);

  String idAppointment="34";


  Future fetcappointment(idAppointment,date) async {
    try {
      var Appointment = await Remote_Services_Appointment.fetchAppointment(date.toString(),idAppointment.toString());
      if (Appointment != null) {
       appointmentList.value = Appointment.appointment!;
        isLoadingAppointment(false);
      }
    } finally {
      isLoadingAppointment(true);
    }
    update();
  }



  Future fetchspatient(String username,String password) async {
    try {
      var patient = await Remote_patient.fetchPatient(username, password);
      if (patient != null) {
        patientList.value = patient.empty as List<Empty>;
        isLoadingPatient(false);
        isAuth = true;
        print("ssssssssssssssssssssssssssss");
        print(isAuth);
      }
    } finally {
      isLoadingPatient(true);
    }
    update();
  }
  // void signin()
  // {
  //   if
  // }
}
