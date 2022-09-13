// To parse this JSON data, do
//
//     final doctors = doctorsFromJson(jsonString);

import 'dart:convert';

Doctors doctorsFromJson(String str) => Doctors.fromJson(json.decode(str));

String doctorsToJson(Doctors data) => json.encode(data.toJson());

class Doctors {
  Doctors({
    required this.doctors,
  });

  List<Doctor> doctors;

  factory Doctors.fromJson(Map<String, dynamic> json) => Doctors(
    doctors: List<Doctor>.from(json["doctors"].map((x) => Doctor.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "doctors": List<dynamic>.from(doctors.map((x) => x.toJson())),
  };
}

class Doctor {
  Doctor({
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
  dynamic costPerPatient;
  String? doctorCertificate;
  int? workExperience;
  String? doctorImg;
  int? departmentNum;
  int? reversedCost;
  dynamic departmentNumNavigation;
  dynamic clincLocationNavigation;
  List<dynamic>? appointments;

  factory Doctor.fromJson(Map<String, dynamic> json) => Doctor(
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
