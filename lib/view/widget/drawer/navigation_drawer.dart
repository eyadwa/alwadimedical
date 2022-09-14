import 'package:centerm/core/constant/color.dart';
import 'package:centerm/data/datasource/static.dart';
import 'package:flutter/material.dart';

import '../../../controller/MainController/controllerpatient.dart';
import '../../../core/constant/imageasset.dart';
import '../../screen/patient/usernamepage.dart';
import '../first screen/widgetbuildHeader.dart';
import 'package:get/get.dart';

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({
    Key? key,
  }) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 30);
  MainController _ConrolllerPatiant =Get.put(MainController());

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
               ColorApp.purple40 ,ColorApp.new26,
            ],
            end: Alignment.centerLeft,
            begin: Alignment.centerRight,
          ),
        ),
        child: ListView(
          children: <Widget>[
            buildHeader(
              onClick: () => Get.to(UserPage()),
            ),
            const SizedBox(height: 30),
            const Divider(color: Colors.black, height: 10),
            BuildMenuItem(text: "info", icon: Icons.info),
            const SizedBox(height: 10),
            BuildMenuItem(text: "facebook", icon: Icons.facebook),
            const SizedBox(height: 10),
            BuildMenuItem(text: "phone", icon: Icons.phone),
            const SizedBox(height: 10),
            const Divider(color: Colors.white, height: 10),
            const SizedBox(height: 100),
            const Divider(color: Colors.black, height: 20),
            BuildMenuItem(text: "logout", icon: Icons.logout),
            const SizedBox(height: 1),
          ],
        ),
      ),
    );
  }
}

Widget BuildMenuItem({required String text, required IconData icon}) {
  final color = Colors.white;
  final hoverColor = Colors.white70;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: TextStyle(color: color),
    ),
    hoverColor: hoverColor,
    onTap: () {},
  );
}
