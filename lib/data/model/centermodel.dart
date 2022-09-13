import 'dart:async';

class centermodel {
  final int? id;
  final String? namedept;
  final String? deptes;
  final String? image;

  centermodel({this.id, this.namedept, this.deptes, this.image});
}

class userModel {
  final int? id;
  final String? username;
  final String? lastname;
  final String? UrlImagephoto;
  final int? phon;
  final String? email;

  userModel(
      {this.UrlImagephoto, this.id, this.phon, this.username, this.lastname, this.email});
}



class itemModel {
  final int? id;
  final int? iddept;
  final String? title;
  final String? describtion;
  final String? UrlImage;
  itemModel({this.id, this.iddept, this.title, this.describtion, this.UrlImage });


}

class doctorModel {
  final int? id;
  final int? iddept;
  final String? namedoctor;
  final String? describtion;
  final String? UrlImage;
  doctorModel({this.id, this.iddept, this.namedoctor, this.describtion, this.UrlImage });


}


class Appointment_Booking{

  final int? id;
  final String? day;
  final bool? Active_day;
  Appointment_Booking({this.id,this.Active_day,this.day});
}

class Dateing{
  final int? id;
  final String? time;
  Dateing({this.id,this.time  });
}