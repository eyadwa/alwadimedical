import 'package:flutter/cupertino.dart';

import 'color.dart';
import 'package:http/http.dart'as http;
const String namecenter="مركز الوادي الطبي";
const BoxDecoration appbarthem=   BoxDecoration(gradient: LinearGradient(colors: [ColorApp.red, ColorApp.purpleAccent], end: Alignment.centerLeft, begin: Alignment.centerRight,),);


const String alwadi='https://alwadi-mc.sy';
final InPoint_URl ='/api/MobileP';
final BaseURL='$Url_alwadi/GetAllPatientAPPOi?id=15';
final String Url_alwadi= alwadi+InPoint_URl;



class Mainclient{
  static var client = http.Client();

}