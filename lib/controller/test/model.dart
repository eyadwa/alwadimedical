// // To parse this JSON data, do
// //
// //     final departmentstest = departmentstestFromJson(jsonString);
//
// import 'dart:convert';
//
// Departmentstest departmentstestFromJson(String str) => Departmentstest.fromJson(json.decode(str));
//
// String departmentstestToJson(Departmentstest data) => json.encode(data.toJson());
//
// class Departmentstest {
//   Departmentstest({
//     required this.departments,
//   });
//
//   List<Department> departments;
//
//   factory Departmentstest.fromJson(Map<String, dynamic> json) => Departmentstest(
//     departments: List<Department>.from(json["departments"].map((x) => Department.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "departments": List<dynamic>.from(departments.map((x) => x.toJson())),
//   };
// }
//
// class Department {
//   Department({
//     this.departmentId,
//     this.departmentName,
//     this.departmentDescription,
//     this.departmentImg,
//     this.doctors,
//     this.specializations,
//   });
//
//   int? departmentId;
//   String? departmentName;
//   String? departmentDescription;
//   String? departmentImg;
//   List<dynamic>? doctors;
//   List<dynamic>? specializations;
//
//   factory Department.fromJson(Map<String, dynamic> json) => Department(
//     departmentId: json["departmentId"],
//     departmentName: json["departmentName"],
//     departmentDescription: json["departmentDescription"],
//     departmentImg: json["departmentImg"],
//     doctors: List<dynamic>.from(json["doctors"].map((x) => x)),
//     specializations: List<dynamic>.from(json["specializations"].map((x) => x)),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "departmentId": departmentId,
//     "departmentName": departmentName,
//     "departmentDescription": departmentDescription,
//     "departmentImg": departmentImg,
//     "doctors": List<dynamic>.from(doctors!.map((x) => x)),
//     "specializations": List<dynamic>.from(specializations!.map((x) => x)),
//   };
// }
