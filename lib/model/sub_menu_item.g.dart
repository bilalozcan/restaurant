// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubMenuItem _$SubMenuItemFromJson(Map<String, dynamic> json) => SubMenuItem(
      name: json['name'] as String?,
      caption: json['caption'] as String?,
      price: json['price'],
      subMenus: (json['subMenus'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$SubMenuItemToJson(SubMenuItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'caption': instance.caption,
      'price': instance.price,
      'subMenus': instance.subMenus,
      'image': instance.image,
    };
