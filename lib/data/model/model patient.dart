// To parse this JSON data, do
//
//     final patient = patientFromJson(jsonString);

import 'dart:convert';

Patient patientFromJson(String str) => Patient.fromJson(json.decode(str));

String patientToJson(Patient data) => json.encode(data.toJson());

class Patient {
  Patient({
    this.patients,
  });

  List<PatientElement>? patients;

  factory Patient.fromJson(Map<String, dynamic> json) => Patient(
    patients: List<PatientElement>.from(json["patients"].map((x) => PatientElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "patients": List<dynamic>.from(patients!.map((x) => x.toJson())),
  };
}

class PatientElement {
  PatientElement({
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
  bool? isActive;
  String? patientLocation;
  String? activationCode;
  DateTime? activationDate;
  bool? isDeleted;
  int? patientAge;
  String? patientGender;
  DateTime? registrationDate;
  String? token;
  List<dynamic>? appointments;

  factory PatientElement.fromJson(Map<String, dynamic> json) => PatientElement(
    patientId: json["patientId"],
    patientName: json["patientName"] == null ? null : json["patientName"],
    patientPhone: json["patientPhone"] == null ? null : json["patientPhone"],
    patientAddress: json["patientAddress"] == null ? null : json["patientAddress"],
    patientImg: json["patientImg"] == null ? null : json["patientImg"],
    patientPassword: json["patientPassword"] == null ? null : json["patientPassword"],
    isActive: json["isActive"] == null ? null : json["isActive"],
    patientLocation: json["patientLocation"] == null ? null : json["patientLocation"],
    activationCode: json["activationCode"] == null ? null : json["activationCode"],
    activationDate: json["activationDate"] == null ? null : DateTime.parse(json["activationDate"]),
    isDeleted: json["isDeleted"] == null ? null : json["isDeleted"],
    patientAge: json["patientAge"] == null ? null : json["patientAge"],
    patientGender: json["patientGender"] == null ? null : json["patientGender"],
    registrationDate: json["registrationDate"] == null ? null : DateTime.parse(json["registrationDate"]),
    token: json["token"] == null ? null : json["token"],
    appointments: List<dynamic>.from(json["appointments"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "patientId": patientId,
    "patientName": patientName == null ? null : patientName,
    "patientPhone": patientPhone == null ? null : patientPhone,
    "patientAddress": patientAddress == null ? null : patientAddress,
    "patientImg": patientImg == null ? null : patientImg,
    "patientPassword": patientPassword == null ? null : patientPassword,
    "isActive": isActive == null ? null : isActive,
    "patientLocation": patientLocation == null ? null : patientLocation,
    "activationCode": activationCode == null ? null : activationCode,
    "activationDate": activationDate == null ? null : activationDate!.toIso8601String(),
    "isDeleted": isDeleted == null ? null : isDeleted,
    "patientAge": patientAge == null ? null : patientAge,
    "patientGender": patientGender == null ? null : patientGender,
    "registrationDate": registrationDate == null ? null : registrationDate!.toIso8601String(),
    "token": token == null ? null : token,
    "appointments": List<dynamic>.from(appointments!.map((x) => x)),
  };
}
