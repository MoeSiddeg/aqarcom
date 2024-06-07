import 'package:json_annotation/json_annotation.dart';

part 'home_response_model.g.dart';

@JsonSerializable()
class HomeResponseModel {
  bool? success;
  String? message;
  Data? data;

  HomeResponseModel({this.success, this.message, this.data});

  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeResponseModelToJson(this);
}

@JsonSerializable()
class Data {
  List<Sliders>? sliders;
  List<Ads>? ads;
  List<Services>? services;

  Data({this.sliders, this.ads, this.services});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Sliders {
  int? id;
  String? image;

  Sliders({this.id, this.image});

  factory Sliders.fromJson(Map<String, dynamic> json) => _$SlidersFromJson(json);

  Map<String, dynamic> toJson() => _$SlidersToJson(this);
}

@JsonSerializable()
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

  factory Ads.fromJson(Map<String, dynamic> json) => _$AdsFromJson(json);

  Map<String, dynamic> toJson() => _$AdsToJson(this);
}

@JsonSerializable()
class Properties {
  String? name;
  int? showOutside;
  String? type;
  String? image;
  List<Values>? values;

  Properties({this.name, this.showOutside, this.type, this.image, this.values});

  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);

  Map<String, dynamic> toJson() => _$PropertiesToJson(this);
}

@JsonSerializable()
class Values {
  String? s0;

  Values({this.s0});

  factory Values.fromJson(Map<String, dynamic> json) => _$ValuesFromJson(json);

  Map<String, dynamic> toJson() => _$ValuesToJson(this);
}

@JsonSerializable()
class Services {
  int? id;
  String? name;
  String? image;
  bool? isValRequired;

  Services({this.id, this.name, this.image, this.isValRequired});

  factory Services.fromJson(Map<String, dynamic> json) =>
      _$ServicesFromJson(json);

  Map<String, dynamic> toJson() => _$ServicesToJson(this);
}