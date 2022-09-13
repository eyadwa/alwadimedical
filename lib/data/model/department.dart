// class Department {
//    int? departmentId;
//    String? departmentName;
//    String? departmentDescription;
//    String? departmentImg;
//    List<dynamic>? doctors;
//    List<dynamic>? specializations;
//
//   Department({
//      this.departmentId,
//      this.departmentName,
//      this.departmentDescription,
//      this.departmentImg,
//      this.doctors,
//      this.specializations,
//   });
// Department.fromJson(Map<String,dynamic> json)
// {
//    departmentId =json['departmentId'];
//  departmentName =json['departmentName'];
//   departmentDescription =json['departmentDescription'];
//    departmentImg =json['departmentImg'];
//    doctors =json['doctors'];
//    specializations =json['specializations'];
// }
// Map <String,dynamic> toJson(){
//   final data =<String,dynamic>{};
//   data['departmentId']=departmentId;
//   data['departmentName']=departmentName;
//   data['departmentDescription']=departmentDescription;
//   data['departmentImg']=departmentImg;
//   data['doctors']=doctors;
//   data['specializations']=specializations;
//   return data;
// }
// }
//
//
// To parse this JSON data, do
//
//     final departments = departmentsFromJson(jsonString);

import 'dart:convert';

Departments departmentsFromJson(String str) => Departments.fromJson(json.decode(str));

String departmentsToJson(Departments data) => json.encode(data.toJson());

class Departments {
  Departments({
    required this.departments,
  });

  List<Department> departments;

  factory Departments.fromJson(Map<String, dynamic> json) => Departments(
    departments: List<Department>.from(json["departments"].map((x) => Department.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "departments": List<dynamic>.from(departments.map((x) => x.toJson())),
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
