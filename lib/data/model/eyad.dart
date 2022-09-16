// To parse this JSON data, do
//
//     final eyad = eyadFromJson(jsonString);

import 'dart:convert';

Eyad eyadFromJson(String str) => Eyad.fromJson(json.decode(str));

String eyadToJson(Eyad data) => json.encode(data.toJson());

class Eyad {
  Eyad({
   required this.appointments,
  });

  List<eyadeyad> appointments;

  factory Eyad.fromJson(Map<String, dynamic> json) => Eyad(
    appointments: List<eyadeyad>.from(json["appointments"].map((x) => eyadeyad.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "appointments": List<dynamic>.from(appointments.map((x) => x.toJson())),
  };
}

class eyadeyad {
  eyadeyad({
    this.appointmentId,
    this.startTime,
    this.endTime,
    this.patient,
    this.doctor,
    this.date,
    this.note,
    this.isApproved,
    this.isDone,
    this.isReversed,
    this.rating,
    this.doctorNavigation,
    this.patientNavigation,
  });

  int? appointmentId;
  DateTime? startTime;
  DateTime? endTime;
  int? patient;
  int? doctor;
  DateTime? date;
  dynamic note;
  bool? isApproved;
  bool? isDone;
  bool? isReversed;
  int? rating;
  dynamic doctorNavigation;
  dynamic patientNavigation;

  factory eyadeyad.fromJson(Map<String, dynamic> json) => eyadeyad(
    appointmentId: json["appointmentId"],
    startTime: DateTime.parse(json["startTime"]),
    endTime: DateTime.parse(json["endTime"]),
    patient: json["patient"],
    doctor: json["doctor"],
    date: DateTime.parse(json["date"]),
    note: json["note"],
    isApproved: json["isApproved"],
    isDone: json["isDone"],
    isReversed: json["isReversed"],
    rating: json["rating"],
    doctorNavigation: json["doctorNavigation"],
    patientNavigation: json["patientNavigation"],
  );

  Map<String, dynamic> toJson() => {
    "appointmentId": appointmentId,
    "startTime": startTime!.toIso8601String(),
    "endTime": endTime!.toIso8601String(),
    "patient": patient,
    "doctor": doctor,
    "date": date!.toIso8601String(),
    "note": note,
    "isApproved": isApproved,
    "isDone": isDone,
    "isReversed": isReversed,
    "rating": rating,
    "doctorNavigation": doctorNavigation,
    "patientNavigation": patientNavigation,
  };
}
