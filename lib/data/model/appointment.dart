// To parse this JSON data, do
//
//     final appointment = appointmentFromJson(jsonString);

import 'dart:convert';

Appointment appointmentFromJson(String str) => Appointment.fromJson(json.decode(str));

String appointmentToJson(Appointment data) => json.encode(data.toJson());

class Appointment {
  Appointment({
    this.appointment,
  });

  List<AppointmentElement>? appointment;

  factory Appointment.fromJson(Map<String, dynamic> json) => Appointment(
    appointment: List<AppointmentElement>.from(json["appointment"].map((x) => AppointmentElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "appointment": List<dynamic>.from(appointment!.map((x) => x.toJson())),
  };
}

class AppointmentElement {
  AppointmentElement({
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

  factory AppointmentElement.fromJson(Map<String, dynamic> json) => AppointmentElement(
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
