import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:restaurant/model/main_menu.dart';

class MenuService {
  static MenuService? _instance;

  static MenuService? get instance {
    _instance ??= MenuService._init();

    return _instance;
  }
  // var data;

  MenuService._init(){
    loadJsonData();
  }
  Future<dynamic> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/menu.json');
    return json.decode(jsonText);
  }

  Future<MainMenu?> getMenu(String key) async {
    var data = await loadJsonData();
    for (var element in (data['menus'] as List)) {
      if(element['key'] == key){
        var menus = MainMenu().fromJson(element);
        return menus;
      }
    }
    return null;
  }
}