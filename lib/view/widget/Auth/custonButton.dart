import 'package:centerm/core/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustonButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustonButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: ColorApp.purple38,
        textColor: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
