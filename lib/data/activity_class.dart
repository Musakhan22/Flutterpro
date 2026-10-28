class Activity {
  String? activity;
  double? availability;
  String? type;
  int? participants;
  int? price;
  String? accessibility;
  String? duration;
  bool? kidFriendly;
  String? link;
  String? key;

  Activity(
      {this.activity,
      this.availability,
      this.type,
      this.participants,
      this.price,
      this.accessibility,
      this.duration,
      this.kidFriendly,
      this.link,
      this.key});

  Activity.fromJson(Map<String, dynamic> json) {
    activity = json['activity'];
    availability = json['availability'];
    type = json['type'];
    participants = json['participants'];
    price = json['price'];
    accessibility = json['accessibility'];
    duration = json['duration'];
    kidFriendly = json['kidFriendly'];
    link = json['link'];
    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['activity'] = this.activity;
    data['availability'] = this.availability;
    data['type'] = this.type;
    data['participants'] = this.participants;
    data['price'] = this.price;
    data['accessibility'] = this.accessibility;
    data['duration'] = this.duration;
    data['kidFriendly'] = this.kidFriendly;
    data['link'] = this.link;
    data['key'] = this.key;
    return data;
  }
}
