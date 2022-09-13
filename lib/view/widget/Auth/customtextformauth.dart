import 'package:flutter/material.dart';

class CustonTextFromAuth extends StatelessWidget {
  const CustonTextFromAuth(
      {Key? key,
      this.typetext,
      required this.hinttext,
      required this.LabelText,
      required this.iconData,
      this.name_mycontroller})
      : super(key: key);
  final String hinttext;
  final String LabelText;
  final IconData iconData;
  final TextInputType? typetext;

  final TextEditingController? name_mycontroller;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      child: TextFormField(
        controller: name_mycontroller,
        keyboardType: typetext,
        decoration: InputDecoration(
          hintText: (hinttext),
          hintStyle: TextStyle(fontSize: 15),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
          label: Container(
              margin: EdgeInsets.symmetric(horizontal: 9),
              child: Text(LabelText)),
          suffixIcon: Icon(iconData),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }
}
