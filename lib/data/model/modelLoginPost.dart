// To parse this JSON data, do
//
//     final loginPost = loginPostFromJson(jsonString);

import 'dart:convert';

LoginPost loginPostFromJson(String str) => LoginPost.fromJson(json.decode(str));

String loginPostToJson(LoginPost data) => json.encode(data.toJson());

class LoginPost {
  LoginPost({
    this.users,
  });

  Users? users;

  factory LoginPost.fromJson(Map<String, dynamic> json) => LoginPost(
    users: Users.fromJson(json["users"]),
  );

  Map<String, dynamic> toJson() => {
    "users": users!.toJson(),
  };
}

class Users {
  Users({
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
  dynamic? patientName;
  dynamic? patientPhone;
  dynamic? patientAddress;
  dynamic? patientImg;
  dynamic? patientPassword;
  bool? isActive;
  dynamic? patientLocation;
  String? activationCode;
  DateTime? activationDate;
  bool? isDeleted;
  dynamic? patientAge;
  dynamic? patientGender;
  DateTime? registrationDate;
  String? token;
  List<dynamic>? appointments;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
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
    "activationDate": activationDate?.toIso8601String(),
    "isDeleted": isDeleted,
    "patientAge": patientAge,
    "patientGender": patientGender,
    "registrationDate": registrationDate?.toIso8601String(),
    "token": token,
    "appointments": List<dynamic>.from(appointments!.map((x) => x)),
  };
}
