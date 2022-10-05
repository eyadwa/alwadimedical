// To parse this JSON data, do
//
//     final appointmenttime = appointmenttimeFromJson(jsonString);

import 'dart:convert';

Appointmenttime appointmenttimeFromJson(String str) => Appointmenttime.fromJson(json.decode(str));

String appointmenttimeToJson(Appointmenttime data) => json.encode(data.toJson());

class Appointmenttime {
  Appointmenttime({
  required  this.appointment,
  });

  Appointment appointment;

  factory Appointmenttime.fromJson(Map<String, dynamic> json) => Appointmenttime(
    appointment: Appointment.fromJson(json["appointment"]),
  );

  Map<String, dynamic> toJson() => {
    "appointment": appointment.toJson(),
  };
}

class Appointment {
  Appointment({
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

  factory Appointment.fromJson(Map<String, dynamic> json) => Appointment(
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
    "startTime": startTime?.toIso8601String(),
    "endTime": endTime?.toIso8601String(),
    "patient": patient,
    "doctor": doctor,
    "date": date?.toIso8601String(),
    "note": note,
    "isApproved": isApproved,
    "isDone": isDone,
    "isReversed": isReversed,
    "rating": rating,
    "doctorNavigation": doctorNavigation,
    "patientNavigation": patientNavigation,
  };
}
