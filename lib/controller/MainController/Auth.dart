import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constant/const.dart';

class Auth extends GetxController {
  TextEditingController username_Login = TextEditingController();
  TextEditingController password_Login = TextEditingController();
  var isLoading = true.obs;
  var url;
  // late Response  response;
SharedPreferences? _prefereces;
 var responseData;
String? tokenAuth;

  Future<void> Login_eyad() async {
    Map<String, dynamic> queryParam = {
      "name": "ayaNew123",
      "password": "5555"
    };

    url = Uri.parse("${Url_BASE},${'/api/MobileP/logIn'},${queryParam}");
var  response =await  http.get(Uri.parse('http://ayaarnous-001-site1.ftempurl.com/api/MobileP/logIn?${queryParam}'));

if (response.statusCode==200){
  responseData=json.decode(response.body);
  _prefereces = await SharedPreferences.getInstance();
  _prefereces!.setString("username", "${this.username_Login}");
  _prefereces!.setString("password", "${this.password_Login}");
  tokenAuth =responseData['users']['token'];
  _prefereces!.setString("token", "${tokenAuth}");
}else
  {

  }
  }
}
