// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class WhatsApp extends StatefulWidget {
//   const WhatsApp({Key? key}) : super(key: key);
//
//   @override
//   State<WhatsApp> createState() => _WhatsAppState();
// }
//
// class _WhatsAppState extends State<WhatsApp> {
//
//   openwhatsapp() async{
//     var whatsapp ="+963988597924";
//     var whatsappURl_android = "whatsapp://send?phone=$whatsapp&text=${Uri.encodeFull("أود الاستعلام رجاءً")}";
//     var whatappURL_ios ="https://api.whatsapp.com/send?phone=$whatsapp=${Uri.parse("أود الاستعلام رجاءً")}";
//
//     if(Platform.isIOS){
//       // for iOS phone only
//       if( await canLaunch(whatappURL_ios)){
//         await launch(whatappURL_ios, forceSafariVC: false);
//       }else{
//         ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: new Text("whatsapp no installed")));
//       }
//     }else{
//       // android , web
//       if( await canLaunchUrl(Uri.parse(whatsappURl_android))){
//         await launchUrl(Uri.parse(whatsappURl_android));
//       }else{
//         ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: new Text("whatsapp no installed")));
//       }
//     }
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton(
//       backgroundColor: const Color(0xff25D366),
//       onPressed: () {
//         openwhatsapp();
//       },
//       child: const Icon(
//         Icons.whatsapp,
//       ),
//     );
//   }
// }
