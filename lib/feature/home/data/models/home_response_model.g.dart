// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponseModel _$HomeResponseModelFromJson(Map<String, dynamic> json) =>
    HomeResponseModel(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HomeResponseModelToJson(HomeResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      sliders: (json['sliders'] as List<dynamic>?)
          ?.map((e) => Sliders.fromJson(e as Map<String, dynamic>))
          .toList(),
      ads: (json['ads'] as List<dynamic>?)
          ?.map((e) => Ads.fromJson(e as Map<String, dynamic>))
          .toList(),
      services: (json['services'] as List<dynamic>?)
          ?.map((e) => Services.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'sliders': instance.sliders,
      'ads': instance.ads,
      'services': instance.services,
    };

Sliders _$SlidersFromJson(Map<String, dynamic> json) => Sliders(
      id: (json['id'] as num?)?.toInt(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$SlidersToJson(Sliders instance) => <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
    };

Ads _$AdsFromJson(Map<String, dynamic> json) => Ads(
      id: (json['id'] as num?)?.toInt(),
      estateArea: json['estateArea'] as String?,
      estateType: json['estateType'] as String?,
      adType: json['adType'] as String?,
      usageType: json['usageType'] as String?,
      isFavourite: json['isFavourite'] as bool?,
      visitsCount: (json['visitsCount'] as num?)?.toInt(),
      price: json['price'] as String?,
      image: json['image'] as String?,
      properties: (json['properties'] as List<dynamic>?)
          ?.map((e) => Properties.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$AdsToJson(Ads instance) => <String, dynamic>{
      'id': instance.id,
      'estateArea': instance.estateArea,
      'estateType': instance.estateType,
      'adType': instance.adType,
      'usageType': instance.usageType,
      'isFavourite': instance.isFavourite,
      'visitsCount': instance.visitsCount,
      'price': instance.price,
      'image': instance.image,
      'properties': instance.properties,
      'description': instance.description,
    };

Properties _$PropertiesFromJson(Map<String, dynamic> json) => Properties(
      name: json['name'] as String?,
      showOutside: (json['showOutside'] as num?)?.toInt(),
      type: json['type'] as String?,
      image: json['image'] as String?,
      values: (json['values'] as List<dynamic>?)
          ?.map((e) => Values.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PropertiesToJson(Properties instance) =>
    <String, dynamic>{
      'name': instance.name,
      'showOutside': instance.showOutside,
      'type': instance.type,
      'image': instance.image,
      'values': instance.values,
    };

Values _$ValuesFromJson(Map<String, dynamic> json) => Values(
      s0: json['s0'] as String?,
    );

Map<String, dynamic> _$ValuesToJson(Values instance) => <String, dynamic>{
      's0': instance.s0,
    };

Services _$ServicesFromJson(Map<String, dynamic> json) => Services(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      image: json['image'] as String?,
      isValRequired: json['isValRequired'] as bool?,
    );

Map<String, dynamic> _$ServicesToJson(Services instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'isValRequired': instance.isValRequired,
    };
