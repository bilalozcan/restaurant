import 'package:flutter/material.dart';
import 'package:restaurant/model/main_menu.dart';
import 'package:restaurant/service/menu_service.dart';
import 'package:stacked/stacked.dart';

class MenuSelectSubViewModel extends BaseViewModel {
  late BuildContext context;
  final MenuService _menuService = MenuService.instance!;
  late PageController controller;
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  List<MainMenu>? menuList = [];

  void initialize(BuildContext context, List<String>? subMenus) async {
    this.context = context;
    controller = PageController();
    isLoading = true;
    for (var element in subMenus!) {
      var menu = await _menuService.getMenu(element);
      menuList!.add(menu!);
    }
    isLoading = false;
  }
}
