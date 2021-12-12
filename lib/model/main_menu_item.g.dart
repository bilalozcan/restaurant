// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_menu_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainMenuItem _$MainMenuItemFromJson(Map<String, dynamic> json) => MainMenuItem(
      name: json['name'] as String?,
      caption: json['caption'] as String?,
      image: json['image'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => SubMenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'],
      subMenus: json['subMenus'] as List<dynamic>?,
    );

Map<String, dynamic> _$MainMenuItemToJson(MainMenuItem instance) =>
    <String, dynamic>{
      'name': instance.name,
      'caption': instance.caption,
      'image': instance.image,
      'price': instance.price,
      'items': instance.items,
      'subMenus': instance.subMenus,
    };
