import 'package:json_annotation/json_annotation.dart';
import 'package:restaurant/core/base/base_model.dart';
import 'main_menu_item.dart';

part 'main_menu.g.dart';

@JsonSerializable()
class MainMenu extends BaseModel {
  MainMenu({
    this.key,
    this.description,
    this.items,
  });

  String? key;
  String? description;
  List<MainMenuItem>? items;

  @override
  fromJson(Map<String, dynamic> json) => _$MainMenuFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MainMenuToJson(this);
}


