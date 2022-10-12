// To parse this JSON data, do
//
//     final sss = sssFromJson(jsonString);

import 'dart:convert';

appoint AppointFromJson(String str) => appoint.fromJson(json.decode(str));

String sssToJson(appoint data) => json.encode(data.toJson());

class appoint {
  appoint({
     required this.appointments,
  });

  List<AppointmentOne> appointments;

  factory appoint.fromJson(Map<String, dynamic> json) => appoint(
    appointments: List<AppointmentOne>.from(json["appointments"].map((x) => AppointmentOne.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "appointments": List<dynamic>.from(appointments.map((x) => x.toJson())),
  };
}

class AppointmentOne {
  AppointmentOne({
    this.appointmentId,
    this.endTime,
    this.startTime,
    this.appointmentDate,
    this.patientId,
    this.doctorId,
    this.doctorName,
    this.doctorSpecialization,
    this.note,
    this.isApproved,
    this.isDone,
    this.isReversed,
    this.rating,
    this.doctorNavigation,
    this.patientNavigstion,
  });

  int? appointmentId;
  DateTime? endTime;
  DateTime? startTime;
  DateTime? appointmentDate;
  int? patientId;
  int? doctorId;
  String? doctorName;
  String? doctorSpecialization;
  dynamic note;
  bool? isApproved;
  bool? isDone;
  bool? isReversed;
  int? rating;
  DoctorNavigation? doctorNavigation;
  PatientNavigstion? patientNavigstion;

  factory AppointmentOne.fromJson(Map<String, dynamic> json) => AppointmentOne(
    appointmentId: json["appointmentID"],
    endTime: DateTime.parse(json["endTime"]),
    startTime: DateTime.parse(json["startTime"]),
    appointmentDate: DateTime.parse(json["appointmentDate"]),
    patientId: json["patientID"],
    doctorId: json["doctorID"],
    doctorName: json["doctorName"],
    doctorSpecialization: json["doctorSpecialization"],
    note: json["note"],
    isApproved: json["isApproved"],
    isDone: json["isDone"],
    isReversed: json["isReversed"],
    rating: json["rating"],
    doctorNavigation: DoctorNavigation.fromJson(json["doctorNavigation"]),
    patientNavigstion: PatientNavigstion.fromJson(json["patientNavigstion"]),
  );

  Map<String, dynamic> toJson() => {
    "appointmentID": appointmentId,
    "endTime": endTime!.toIso8601String(),
    "startTime": startTime!.toIso8601String(),
    "appointmentDate": appointmentDate!.toIso8601String(),
    "patientID": patientId,
    "doctorID": doctorId,
    "doctorName": doctorName,
    "doctorSpecialization": doctorSpecialization,
    "note": note,
    "isApproved": isApproved,
    "isDone": isDone,
    "isReversed": isReversed,
    "rating": rating,
    "doctorNavigation": doctorNavigation!.toJson(),
    "patientNavigstion": patientNavigstion!.toJson(),
  };
}

class DoctorNavigation {
  DoctorNavigation({
    this.doctorId,
    this.doctorName,
    this.doctorPhone,
    this.doctorEmail,
    this.doctorAddrress,
    this.clincLocation,
    this.doctorGender,
    this.doctorSpecialization,
    this.costPerPatient,
    this.doctorCertificate,
    this.workExperience,
    this.doctorImg,
    this.departmentNum,
    this.reversedCost,
    this.departmentNumNavigation,
    this.clincLocationNavigation,
    this.appointments,
  });

  int? doctorId;
  String? doctorName;
  String? doctorPhone;
  String? doctorEmail;
  String? doctorAddrress;
  int? clincLocation;
  String? doctorGender;
  String? doctorSpecialization;
  int? costPerPatient;
  String? doctorCertificate;
  int? workExperience;
  String? doctorImg;
  int? departmentNum;
  int? reversedCost;
  dynamic departmentNumNavigation;
  dynamic clincLocationNavigation;
  List<dynamic>? appointments;

  factory DoctorNavigation.fromJson(Map<String, dynamic> json) => DoctorNavigation(
    doctorId: json["doctorId"],
    doctorName: json["doctorName"],
    doctorPhone: json["doctorPhone"],
    doctorEmail: json["doctorEmail"],
    doctorAddrress: json["doctorAddrress"],
    clincLocation: json["clincLocation"],
    doctorGender: json["doctorGender"],
    doctorSpecialization: json["doctorSpecialization"],
    costPerPatient: json["costPerPatient"],
    doctorCertificate: json["doctorCertificate"],
    workExperience: json["workExperience"],
    doctorImg: json["doctorImg"],
    departmentNum: json["departmentNum"],
    reversedCost: json["reversedCost"],
    departmentNumNavigation: json["departmentNumNavigation"],
    clincLocationNavigation: json["clincLocationNavigation"],
    appointments: List<dynamic>.from(json["appointments"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "doctorId": doctorId,
    "doctorName": doctorName,
    "doctorPhone": doctorPhone,
    "doctorEmail": doctorEmail,
    "doctorAddrress": doctorAddrress,
    "clincLocation": clincLocation,
    "doctorGender": doctorGender,
    "doctorSpecialization": doctorSpecialization,
    "costPerPatient": costPerPatient,
    "doctorCertificate": doctorCertificate,
    "workExperience": workExperience,
    "doctorImg": doctorImg,
    "departmentNum": departmentNum,
    "reversedCost": reversedCost,
    "departmentNumNavigation": departmentNumNavigation,
    "clincLocationNavigation": clincLocationNavigation,
    "appointments": List<dynamic>.from(appointments!.map((x) => x)),
  };
}

class PatientNavigstion {
  PatientNavigstion({
    this.patientId,
    this.patientName,
    this.patientPhone,
    this.patientAddress,
    this.patientImg,
    this.patientPassword,
    this.isActive,
    this.patientLocation,
    this.activationCode,
    this.activationDate,
    this.isDeleted,
    this.patientAge,
    this.patientGender,
    this.registrationDate,
    this.token,
    this.appointments,
  });

  int? patientId;
  String? patientName;
  String? patientPhone;
  String? patientAddress;
  String? patientImg;
  String? patientPassword;
  dynamic isActive;
  String? patientLocation;
  dynamic activationCode;
  dynamic activationDate;
  dynamic isDeleted;
  int? patientAge;
  String? patientGender;
  dynamic registrationDate;
  dynamic token;
  List<dynamic>? appointments;

  factory PatientNavigstion.fromJson(Map<String, dynamic> json) => PatientNavigstion(
    patientId: json["patientId"],
    patientName: json["patientName"],
    patientPhone: json["patientPhone"],
    patientAddress: json["patientAddress"],
    patientImg: json["patientImg"],
    patientPassword: json["patientPassword"],
    isActive: json["isActive"],
    patientLocation: json["patientLocation"],
    activationCode: json["activationCode"],
    activationDate: json["activationDate"],
    isDeleted: json["isDeleted"],
    patientAge: json["patientAge"],
    patientGender: json["patientGender"],
    registrationDate: json["registrationDate"],
    token: json["token"],
    appointments: List<dynamic>.from(json["appointments"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "patientId": patientId,
    "patientName": patientName,
    "patientPhone": patientPhone,
    "patientAddress": patientAddress,
    "patientImg": patientImg,
    "patientPassword": patientPassword,
    "isActive": isActive,
    "patientLocation": patientLocation,
    "activationCode": activationCode,
    "activationDate": activationDate,
    "isDeleted": isDeleted,
    "patientAge": patientAge,
    "patientGender": patientGender,
    "registrationDate": registrationDate,
    "token": token,
    "appointments": List<dynamic>.from(appointments!.map((x) => x)),
  };
}
