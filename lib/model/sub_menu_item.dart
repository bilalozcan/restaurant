import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant/core/base/base_model.dart';

part 'sub_menu_item.g.dart';

@JsonSerializable()
class SubMenuItem extends BaseModel{
  SubMenuItem({
    this.name,
    this.caption,
    this.price,
    this.subMenus,
    this.image,
  });

  String? name;
  String? caption;
  dynamic price;
  List<String>? subMenus;
  String? image;

  factory SubMenuItem.fromJson(Map<String, dynamic> json) => _$SubMenuItemFromJson(json);

  @override
  fromJson(Map<String, dynamic> json) => _$SubMenuItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubMenuItemToJson(this);
}