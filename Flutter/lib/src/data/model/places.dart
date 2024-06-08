import 'dart:convert';

import 'package:flutter/foundation.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first



class Place {

  String name;
  String location;
  String img;
  String desc;
  String attract;
  String visitTime;
  String ChildAllow;
  Place({
    required this.name,
    required this.location,
    required this.img,
    required this.desc,
    required this.attract,
    required this.visitTime,
    required this.ChildAllow,
  });

  Place copyWith({
    String? name,
    String? location,
    String? img,
    String? desc,
    String? attract,
    String? visitTime,
    String? ChildAllow,
  }) {
    return Place(
      name: name ?? this.name,
      location: location ?? this.location,
      img: img ?? this.img,
      desc: desc ?? this.desc,
      attract: attract ?? this.attract,
      visitTime: visitTime ?? this.visitTime,
      ChildAllow: ChildAllow ?? this.ChildAllow,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'location': location,
      'img': img,
      'desc': desc,
      'attract': attract,
      'visitTime': visitTime,
      'ChildAllow': ChildAllow,
    };
  }

  factory Place.fromMap(Map<String, dynamic> map) {
    return Place(
      name: map['name'] as String,
      location: map['location'] as String,
      img: map['img'] as String,
      desc: map['desc'] as String,
      attract: map['attract'] as String,
      visitTime: map['visitTime'] as String,
      ChildAllow: map['ChildAllow'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Place.fromJson(String source) => Place.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Place(name: $name, location: $location, img: $img, desc: $desc, attract: $attract, visitTime: $visitTime, ChildAllow: $ChildAllow)';
  }

  @override
  bool operator ==(covariant Place other) {
    if (identical(this, other)) return true;

    return
      other.name == name &&
          other.location == location &&
          other.img == img &&
          other.desc == desc &&
          other.attract == attract &&
          other.visitTime == visitTime &&
          other.ChildAllow == ChildAllow;
  }

  @override
  int get hashCode {
    return name.hashCode ^
    location.hashCode ^
    img.hashCode ^
    desc.hashCode ^
    attract.hashCode ^
    visitTime.hashCode ^
    ChildAllow.hashCode;
  }
}


class DayWise {

  String item;
  List<String> places;
  DayWise({
    required this.item,
    required this.places,
  });

}

String TotalTime ="";

class Hotel {
  String name;
  Hotel({
    required this.name,
  });
}

class EstimateCost {

  String accomodate;
  String activity;
  String food;
  String transport;
  EstimateCost({
    required this.accomodate,
    required this.activity,
    required this.food,
    required this.transport,
  });
}