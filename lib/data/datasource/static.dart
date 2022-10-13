//
//
// import 'package:flutter/scheduler.dart';
//
// import '../../core/constant/imageasset.dart';
// import '../model/centermodel.dart';
//
// List <centermodel> centerlist=[
//   centermodel (id:0,namedept: 'قسم التجميل ',deptes: 'تجميل البشرة',image:ImageAsset.photo_one),
//   centermodel (id:0,namedept: 'قسم التجميل',deptes: 'زراعة الشعر',image: ImageAsset.photo_tow),
//   centermodel (id:1,namedept: ' قسم الداخلية   ',deptes: 'الهضمية ',image: ImageAsset.photo_three),
//   centermodel (id:2,namedept: 'قسم العينية  ',deptes: 'تصحيح البصر',image: ImageAsset.photo_four),
//  centermodel (id:0,namedept: 'قسم التجميل ',deptes: 'تجميل البشرة',image:ImageAsset.photo_one),
//   centermodel (id:0,namedept: 'قسم التجميل',deptes: 'زراعة الشعر',image: ImageAsset.photo_tow),
//   centermodel (id:1,namedept: ' قسم الداخلية   ',deptes: 'الهضمية ',image: ImageAsset.photo_three),
//   centermodel (id:2,namedept: 'قسم العينية  ',deptes: 'تصحيح البصر',image: ImageAsset.photo_four),
//
// ];
//
// List <userModel > userlist =
//     [
//
//       userModel(id: 1,username: "mohammed",phon:0988597924 ,UrlImagephoto:ImageAsset.userphoto ,lastname:"ALwafai",email:"eyadalwafai1993@gmail.com" ),
//       userModel(id: 2,username: "mohammed",phon:0988597924 ,UrlImagephoto: ImageAsset.userphoto,lastname:"ALwafai" ,email:"eyadalwafai1993@gmail.com" ),
//       userModel(id: 3,username: "mohammed",phon:0988597924 ,UrlImagephoto: ImageAsset.userphoto,lastname:"ALwafai" ,email:"eyadalwafai1993@gmail.com" ),
//       userModel(id: 4,username: "mohammed",phon:0988597924 ,UrlImagephoto: ImageAsset.userphoto,lastname:"ALwafai" ,email:"eyadalwafai1993@gmail.com" ),
//       userModel(id: 5,username: "mohammed",phon:0988597924 ,UrlImagephoto:ImageAsset.userphoto ,lastname:"ALwafai" ,email:"eyadalwafai1993@gmail.com" ),
//       userModel(id: 6,username: "mohammed",phon:0988597924 ,UrlImagephoto: ImageAsset.userphoto,lastname:"ALwafai" ,email:"eyadalwafai1993@gmail.com" ),
//       userModel(id: 7,username: "mohammed",phon:0988597924 ,UrlImagephoto: ImageAsset.userphoto,lastname:"ALwafai" ,email:"eyadalwafai1993@gmail.com" ),
//     ];
//  List <itemModel> itemlist=[
//    itemModel(id: 1,title: "امراض داخلية" ,describtion: "سبب البشرة الجافة أعراضًا عديدة، ومنها: إثارة الحكة،\n وخشونة في الجلد،\n وظهور تشققات أو قشور في الجلد،",iddept: 1,UrlImage: ImageAsset.photo_three),
//    itemModel(id: 1,title: "عينية امراض" ,describtion: "سبب البشرة الجافة أعراضًا عديدة، ومنها: إثارة الحكة،\n  وخشونة في الجلد،\n وظهور تشققات أو قشور في الجلد،",iddept: 1,UrlImage: ImageAsset.photo_three),
//    itemModel(id: 1,title: " اورام" ,describtion: "سبب البشرة الجافة أعراضًا عديدة، ومنها: إثارة الحكة،\n وخشونة في الجلد،\n وظهور تشققات أو قشور في الجلد،",iddept: 1,UrlImage: ImageAsset.photo_three),
//    itemModel(id: 1,title: "تجميل" ,describtion: "سبب البشرة الجافة أعراضًا عديدة، ومنها: إثارة الحكة،\n  وخشونة في الجلد،\n وظهور تشققات أو قشور في الجلد،",iddept: 1,UrlImage: ImageAsset.photo_three),
//    itemModel(id: 1,title: "جراحة" ,describtion: "سبب البشرة الجافة أعراضًا عديدة، ومنها: إثارة الحكة،\n  وخشونة في الجلد،\n وظهور تشققات أو قشور في الجلد،",iddept: 1,UrlImage: ImageAsset.photo_three),
//    itemModel(id: 1,title: "العيادة السنّة" ,describtion: "سبب البشرة الجافة أعراضًا عديدة، ومنها: إثارة الحكة،\n  وخشونة في الجلد،\n وظهور تشققات أو قشور في الجلد،",iddept: 1,UrlImage: ImageAsset.photo_three),
//  ];
// List <doctorModel> doctorlist=[
//   doctorModel(UrlImage: ImageAsset.photoDoctor1,iddept:1 ,describtion: "امراض هضمية",namedoctor: "دكتور محمد المحمد",id:1 ),
//   doctorModel(UrlImage: ImageAsset.photoDoctor2,iddept:1 ,describtion: "امراض غدد ",namedoctor: "دكتور انس الانس",id:1 ),
//   doctorModel(UrlImage: ImageAsset.photoDoctor3,iddept:1 ,describtion: "امراض الكلية",namedoctor: "دكتور مازن المازن",id:1 ),
//   doctorModel(UrlImage: ImageAsset.photoDoctor4,iddept:1 ,describtion: "امراض داخيلة",namedoctor: "دكتور مازن المازن",id:1 ),
//   doctorModel(UrlImage: ImageAsset.doctorphoto,iddept:1 ,describtion: "امراض داخيلة",namedoctor: "دكتور مازن المازن",id:1 ),
// ];
//
//
//
// List <Appointment_Booking> Appointment_Bookinglist=[
//   Appointment_Booking(id: 1,Active_day: true,day:"احد"),
//   Appointment_Booking(id: 2,Active_day: true,day:"الاثنين"),
//   Appointment_Booking(id: 3,Active_day: true,day:"الثلاثاء"),
//   Appointment_Booking(id: 4,Active_day: true,day:"الاربعاء"),
//   Appointment_Booking(id: 5,Active_day: true,day:"الخميس"),
//   Appointment_Booking(id: 6,Active_day: true,day:"الجمعة"),
//   Appointment_Booking(id: 7,Active_day: true,day:"السبت"),
// ];
// List <Dateing>  Dateinglist=[
//   Dateing(id:1,time :"10:00"),
//   Dateing(id:1,time :"10:30"),
//   Dateing(id:1,time :"11:00"),
//   Dateing(id:1,time :"11:30"),
//   Dateing(id:1,time :"12:00"),
//   Dateing(id:1,time :"12:30"),
// ];