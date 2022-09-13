// To parse this JSON data, do
//
//     final depter = depterFromJson(jsonString);

import 'dart:convert';

  Depter depterFromJson(String str) =>  Depter.fromJson(json.decode(str));

String depterToJson(Depter data) => json.encode(data.toJson());

class Depter {
  Depter({
    this.departments,
  });

  List<Department>? departments;

  factory Depter.fromJson(Map<String, dynamic> json) => Depter(
    departments: List<Department>.from(json["departments"].map((x) => Department.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "departments": List<dynamic>.from(departments!.map((x) => x.toJson())),
  };
}

class Department {
  Department({
    this.departmentId,
    this.departmentName,
    this.departmentDescription,
    this.departmentImg,
    this.doctors,
    this.specializations,
  });

  int? departmentId;
  String? departmentName;
  String? departmentDescription;
  String? departmentImg;
  List<dynamic>? doctors;
  List<dynamic>? specializations;

  factory Department.fromJson(Map<String, dynamic> json) => Department(
    departmentId: json["departmentId"],
    departmentName: json["departmentName"],
    departmentDescription: json["departmentDescription"],
    departmentImg: json["departmentImg"],
    doctors: List<dynamic>.from(json["doctors"].map((x) => x)),
    specializations: List<dynamic>.from(json["specializations"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "departmentId": departmentId,
    "departmentName": departmentName,
    "departmentDescription": departmentDescription,
    "departmentImg": departmentImg,
    "doctors": List<dynamic>.from(doctors!.map((x) => x)),
    "specializations": List<dynamic>.from(specializations!.map((x) => x)),
  };
}
