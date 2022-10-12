// To parse this JSON data, do
//
//     final users = usersFromJson(jsonString);

import 'dart:convert';

Users usersFromJson(String str) => Users.fromJson(json.decode(str));

String usersToJson(Users data) => json.encode(data.toJson());

class Users {
  Users({
    required    this.users,
  });

  UsersEntity users;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
    users: UsersEntity.fromJson(json["users"]),
  );

  Map<String, dynamic> toJson() => {
    "users": users.toJson(),
  };
}

class UsersEntity {
  UsersEntity({
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

  factory UsersEntity.fromJson(Map<String, dynamic> json) => UsersEntity(
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
