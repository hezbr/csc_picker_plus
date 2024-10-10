class Country {
  int? id;
  String? name;
  String? nameAr;
  String? emoji;
  String? emojiU;
  String? iso2;
  String? iso3;
  String? frenchname;
  int? countrycode;
  List<Region>? state;

  Country({
    this.id,
    this.name,
    this.nameAr,
    this.emoji,
    this.emojiU,
    this.state,
    this.iso2,
    this.iso3,
    this.frenchname,
    this.countrycode,
  });

  Country.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameAr = json['name_ar'];
    emoji = json['emoji'];
    emojiU = json['emojiU'];
    iso2 = json['iso2'];
    iso3 = json['iso3'];
    countrycode = json['countrycode'];
    frenchname = json['frenchname'];
    if (json['state'] != null) {
      state = [];
      json['state'].forEach((v) {
        state!.add(Region.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['name_ar'] = nameAr;
    data['emoji'] = emoji;
    data['emojiU'] = emojiU;
    data['iso2'] = iso2;
    data['iso3'] = iso3;
    data['countrycode'] = countrycode;
    data['frenchname'] = frenchname;
    if (state != null) {
      data['state'] = state!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Region {
  int? id;
  String? name;
  String? nameAr;
  int? countryId;
  List<City>? city;

  Region({this.id, this.name, this.nameAr, this.countryId, this.city});

  Region.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameAr = json['name_ar'];
    countryId = json['country_id'];
    if (json['city'] != null) {
      city = [];
      json['city'].forEach((v) {
        city!.add(City.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['name_ar'] = nameAr;
    data['country_id'] = countryId;
    if (city != null) {
      data['city'] = city!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class City {
  int? id;
  String? name;
  int? stateId;

  City({this.id, this.name, this.stateId});

  City.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    stateId = json['state_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['state_id'] = stateId;
    return data;
  }
}
