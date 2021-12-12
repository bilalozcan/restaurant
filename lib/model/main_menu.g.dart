// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainMenu _$MainMenuFromJson(Map<String, dynamic> json) => MainMenu(
      key: json['key'] as String?,
      description: json['description'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => MainMenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MainMenuToJson(MainMenu instance) => <String, dynamic>{
      'key': instance.key,
      'description': instance.description,
      'items': instance.items,
    };
