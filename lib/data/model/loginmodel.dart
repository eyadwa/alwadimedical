// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

Users usersFromJson(String str) => Users.fromJson(json.decode(str));

String usersToJson(Users data) => json.encode(data.toJson());

class Users {
  Users({
   required this.empty,
  });

  Empty empty;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
    empty: Empty.fromJson(json[""]),
  );

  Map<String, dynamic> toJson() => {
    "": empty.toJson(),
  };
}

class Empty {
  Empty({
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
  dynamic patientImg;
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

  factory Empty.fromJson(Map<String, dynamic> json) => Empty(
    patientId: json["patientId"],
    patientName: json["patientName"],
    patientPhone: json["patientPhone"],
    patientAddress: json["patientAddress"],
    patientImg: json["patientImg"],
    patientPassword: json["patientPassword"],
    isActive: json["isActive"],
    patientLocation: json["patientLocation"],
    activationCode: json["activationCode"],
    activationDate: DateTime.parse(json["activationDate"]),
    isDeleted: json["isDeleted"],
    patientAge: json["patientAge"],
    patientGender: json["patientGender"],
    registrationDate: DateTime.parse(json["registrationDate"]),
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
    "activationDate": activationDate!.toIso8601String(),
    "isDeleted": isDeleted,
    "patientAge": patientAge,
    "patientGender": patientGender,
    "registrationDate": registrationDate!.toIso8601String(),
    "token": token,
    "appointments": List<dynamic>.from(appointments!.map((x) => x)),
  };
}
