class ItenaryModel {
  String? status;
  Data? data;

  ItenaryModel({this.status, this.data});

  ItenaryModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Places>? places;
  List<DayWiseItinerary>? dayWiseItinerary;
  String? totalTravelTime;
  List<String>? hotels;
  EstimatedCost? estimatedCost;
  List<String>? experiences;
  List<String>? transport;

  Data(
      {this.places,
        this.dayWiseItinerary,
        this.totalTravelTime,
        this.hotels,
        this.estimatedCost,
        this.experiences,
        this.transport});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['places'] != null) {
      places = <Places>[];
      json['places'].forEach((v) {
        places!.add(new Places.fromJson(v));
      });
    }
    if (json['dayWiseItinerary'] != null) {
      dayWiseItinerary = <DayWiseItinerary>[];
      json['dayWiseItinerary'].forEach((v) {
        dayWiseItinerary!.add(new DayWiseItinerary.fromJson(v));
      });
    }
    totalTravelTime = json['totalTravelTime'];
    hotels = json['hotels'].cast<String>();
    estimatedCost = json['estimatedCost'] != null
        ? new EstimatedCost.fromJson(json['estimatedCost'])
        : null;
    experiences = json['experiences'].cast<String>();
    transport = json['transport'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.places != null) {
      data['places'] = this.places!.map((v) => v.toJson()).toList();
    }
    if (this.dayWiseItinerary != null) {
      data['dayWiseItinerary'] =
          this.dayWiseItinerary!.map((v) => v.toJson()).toList();
    }
    data['totalTravelTime'] = this.totalTravelTime;
    data['hotels'] = this.hotels;
    if (this.estimatedCost != null) {
      data['estimatedCost'] = this.estimatedCost!.toJson();
    }
    data['experiences'] = this.experiences;
    data['transport'] = this.transport;
    return data;
  }
}

class Places {
  String? name;
  String? location;
  String? imageLink;
  String? description;
  String? attraction;
  String? visitTime;
  String? childrenAllowed;
  String? longitude;
  String? latitude;

  Places(
      {this.name,
        this.location,
        this.imageLink,
        this.description,
        this.attraction,
        this.visitTime,
        this.childrenAllowed,
      this.latitude,
        this.longitude
      });

  Places.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    location = json['location'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    imageLink = json['image_link'];
    description = json['description'];
    attraction = json['attraction'];
    visitTime = json['VisitTime'];
    childrenAllowed = json['childrenAllowed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['location'] = this.location;
    data['image_link'] = this.imageLink;
    data['latitude'] = this.latitude;
    data['longitude'] = this.longitude;
    data['description'] = this.description;
    data['attraction'] = this.attraction;
    data['VisitTime'] = this.visitTime;
    data['childrenAllowed'] = this.childrenAllowed;
    return data;
  }
}

class DayWiseItinerary {
  String? day;
  List<String>? places;

  DayWiseItinerary({this.day, this.places});

  DayWiseItinerary.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    places = json['places'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['places'] = this.places;
    return data;
  }
}

class EstimatedCost {
  String? accomodation;
  String? activities;
  String? food;
  String? transport;

  EstimatedCost(
      {this.accomodation, this.activities, this.food, this.transport});

  EstimatedCost.fromJson(Map<String, dynamic> json) {
    accomodation = json['accomodation'];
    activities = json['activities'];
    food = json['food'];
    transport = json['transport'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accomodation'] = this.accomodation;
    data['activities'] = this.activities;
    data['food'] = this.food;
    data['transport'] = this.transport;
    return data;
  }
}
