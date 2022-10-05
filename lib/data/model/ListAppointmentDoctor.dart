// To parse this JSON data, do
//
//     final listAppointDoctor = listAppointDoctorFromJson(jsonString);

import 'dart:convert';

List<ListAppointDoctor> listAppointDoctorFromJson(String str) => List<ListAppointDoctor>.from(json.decode(str).map((x) => ListAppointDoctor.fromJson(x)));

String listAppointDoctorToJson(List<ListAppointDoctor> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ListAppointDoctor {
  ListAppointDoctor({
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
  dynamic patient;
  int? doctor;
  dynamic date;
  dynamic note;
  dynamic isApproved;
  dynamic isDone;
  bool? isReversed;
  int? rating;
  dynamic doctorNavigation;
  dynamic patientNavigation;

  factory ListAppointDoctor.fromJson(Map<String, dynamic> json) => ListAppointDoctor(
    appointmentId: json["appointmentId"],
    startTime: DateTime.parse(json["startTime"]),
    endTime: DateTime.parse(json["endTime"]),
    patient: json["patient"],
    doctor: json["doctor"],
    date: json["date"],
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
    "date": date,
    "note": note,
    "isApproved": isApproved,
    "isDone": isDone,
    "isReversed": isReversed,
    "rating": rating,
    "doctorNavigation": doctorNavigation,
    "patientNavigation": patientNavigation,
  };
}
