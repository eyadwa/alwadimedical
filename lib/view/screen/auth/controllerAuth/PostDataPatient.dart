import 'package:centerm/data/model/patietmmmm.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Addpatient?> getDataPatient(
    String patientName,
    int patientPhone,
    String patientAddress,
    String patientPassword,
    int patientAge,
    String patientGender,
    String? patientLocation) async {
  var Base_URL = "http://ayaarnous-001-site1.ftempurl.com";

  // Map<String, String> parameters = {
  //   "patientName": patientName.toString(),
  //   "patientPhone": patientPhone.toString(),
  //   "patientAddress": patientAddress.toString(),
  //   "patientPassword": patientPassword.toString(),
  //   "patientAge": patientAge.toString(),
  //   "patientGender": patientGender.toString(),
  //   "patientLocation": patientLocation.toString(),
  // };





// /MobileP/AddNewPatient?name=mohammed&phone=1236547899&age=35&gender=male&location=homs&address=alhamre&password=12345
  final url = Uri.parse('$Base_URL/api/MobileP/AddNewPatient?patientLocation=$patientLocation&patientGender=$patientGender&patientAge=$patientAge&patientPassword=$patientPassword&patientName=$patientName&patientPhone=$patientPhone&patientAddress=$patientAddress',);


  final response = await http.post(url);
  if (response.statusCode == 200) {
    print("add new client has been successfully");
    final String responseString = response.body;
    return addpatientFromJson(responseString);
  } else
    return null;
}
