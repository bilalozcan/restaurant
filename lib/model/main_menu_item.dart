import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant/core/base/base_model.dart';
import 'package:restaurant/model/sub_menu_item.dart';

part 'main_menu_item.g.dart';

@JsonSerializable()
class MainMenuItem extends BaseModel{
  MainMenuItem({
    this.name,
    this.caption,
    this.image,
    this.items,
  });

  String? name;
  String? caption;
  String? image;
  List<SubMenuItem>? items;

  factory MainMenuItem.fromJson(Map<String, dynamic> json) => _$MainMenuItemFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) => _$MainMenuItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MainMenuItemToJson(this);
}