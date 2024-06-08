class DayWiseModel {
  List<Items>? items;

  DayWiseModel({this.items});

  DayWiseModel.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(new Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.items != null) {
      data['items'] = this.items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? day;
  String? time;
  String? name;
  String? task;
  String? imageLink;
  String? budget;
  String? location;

  Items(
      {this.day,
        this.time,
        this.name,
        this.task,
        this.imageLink,
        this.budget,
        this.location});

  Items.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    time = json['time'];
    name = json['name'];
    task = json['task'];
    imageLink = json['image_link'];
    budget = json['budget'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['time'] = this.time;
    data['name'] = this.name;
    data['task'] = this.task;
    data['image_link'] = this.imageLink;
    data['budget'] = this.budget;
    data['location'] = this.location;
    return data;
  }
}
