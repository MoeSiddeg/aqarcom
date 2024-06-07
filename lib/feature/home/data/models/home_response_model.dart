class HomeResponseModel {
  bool? success;
  String? message;
  Data? data;

  HomeResponseModel({this.success, this.message, this.data});

  HomeResponseModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<Sliders>? sliders;
  List<Ads>? ads;
  List<Services>? services;

  Data({this.sliders, this.ads, this.services});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['sliders'] != null) {
      sliders = <Sliders>[];
      json['sliders'].forEach((v) {
        sliders!.add(new Sliders.fromJson(v));
      });
    }
    if (json['ads'] != null) {
      ads = <Ads>[];
      json['ads'].forEach((v) {
        ads!.add(new Ads.fromJson(v));
      });
    }
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(new Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sliders != null) {
      data['sliders'] = this.sliders!.map((v) => v.toJson()).toList();
    }
    if (this.ads != null) {
      data['ads'] = this.ads!.map((v) => v.toJson()).toList();
    }
    if (this.services != null) {
      data['services'] = this.services!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sliders {
  int? id;
  String? image;

  Sliders({this.id, this.image});

  Sliders.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    return data;
  }
}

class Ads {
  int? id;
  String? estateArea;
  String? estateType;
  String? adType;
  String? usageType;
  bool? isFavourite;
  int? visitsCount;
  String? price;
  String? image;
  List<Properties>? properties;
  String? description;

  Ads(
      {this.id,
        this.estateArea,
        this.estateType,
        this.adType,
        this.usageType,
        this.isFavourite,
        this.visitsCount,
        this.price,
        this.image,
        this.properties,
        this.description});

  Ads.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    estateArea = json['estate_area'];
    estateType = json['estate_type'];
    adType = json['ad_type'];
    usageType = json['usage_type'];
    isFavourite = json['is_favourite'];
    visitsCount = json['visits_count'];
    price = json['price'];
    image = json['image'];
    if (json['properties'] != null) {
      properties = <Properties>[];
      json['properties'].forEach((v) {
        properties!.add(new Properties.fromJson(v));
      });
    }
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['estate_area'] = this.estateArea;
    data['estate_type'] = this.estateType;
    data['ad_type'] = this.adType;
    data['usage_type'] = this.usageType;
    data['is_favourite'] = this.isFavourite;
    data['visits_count'] = this.visitsCount;
    data['price'] = this.price;
    data['image'] = this.image;
    if (this.properties != null) {
      data['properties'] = this.properties!.map((v) => v.toJson()).toList();
    }
    data['description'] = this.description;
    return data;
  }
}

class Properties {
  String? name;
  int? showOutside;
  String? type;
  String? image;
  List<Values>? values;

  Properties({this.name, this.showOutside, this.type, this.image, this.values});

  Properties.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    showOutside = json['show_outside'];
    type = json['type'];
    image = json['image'];
    if (json['values'] != null) {
      values = <Values>[];
      json['values'].forEach((v) {
        values!.add(new Values.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['show_outside'] = this.showOutside;
    data['type'] = this.type;
    data['image'] = this.image;
    if (this.values != null) {
      data['values'] = this.values!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Values {
  String? s0;

  Values({this.s0});

  Values.fromJson(Map<String, dynamic> json) {
    s0 = json['0'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['0'] = this.s0;
    return data;
  }
}

class Services {
  int? id;
  String? name;
  String? image;
  bool? isValRequired;

  Services({this.id, this.name, this.image, this.isValRequired});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    isValRequired = json['is_val_required'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['image'] = this.image;
    data['is_val_required'] = this.isValRequired;
    return data;
  }
}