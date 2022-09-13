// To parse this JSON data, do
//
//     final specializations = specializationsFromJson(jsonString);

import 'dart:convert';

Specializations specializationsFromJson(String str) => Specializations.fromJson(json.decode(str));

String specializationsToJson(Specializations data) => json.encode(data.toJson());

class Specializations {
  Specializations({
  required  this.specializations,
  });

  List<Specialization> specializations;

  factory Specializations.fromJson(Map<String, dynamic> json) => Specializations(
    specializations: List<Specialization>.from(json["specializations"].map((x) => Specialization.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "specializations": List<dynamic>.from(specializations.map((x) => x.toJson())),
  };
}

class Specialization {
  Specialization({
    this.specializationId,
    this.specializationName,
    this.specializationDescription,
    this.specializationmg,
    this.depNum,
    this.cost,
    this.sessionDuration,
    this.depNumNavigation,
  });

  int? specializationId;
  String? specializationName;
  String? specializationDescription;
  String? specializationmg;
  int? depNum;
  dynamic cost;
  int? sessionDuration;
  dynamic depNumNavigation;

  factory Specialization.fromJson(Map<String, dynamic> json) => Specialization(
    specializationId: json["specializationId"],
    specializationName: json["specializationName"],
    specializationDescription: json["specializationDescription"],
    specializationmg: json["specializationmg"],
    depNum: json["depNum"],
    cost: json["cost"],
    sessionDuration: json["sessionDuration"],
    depNumNavigation: json["depNumNavigation"],
  );

  Map<String, dynamic> toJson() => {
    "specializationId": specializationId,
    "specializationName": specializationName,
    "specializationDescription": specializationDescription,
    "specializationmg": specializationmg,
    "depNum": depNum,
    "cost": cost,
    "sessionDuration": sessionDuration,
    "depNumNavigation": depNumNavigation,
  };
}
