import 'package:flutter/material.dart';
import 'package:restaurant/model/main_menu.dart';
import 'package:restaurant/service/menu_service.dart';
import 'package:restaurant/view/home/home_view.dart';
import 'package:stacked/stacked.dart';
import 'package:kartal/kartal.dart';

class HomeViewModel extends BaseViewModel {
  late BuildContext context;
  final MenuService _menuService = MenuService.instance!;
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  MainMenu? menus;
  void initialize(BuildContext context) async {
    this.context = context;
    isLoading = true;
    menus = await _menuService.getMenu('main');
    isLoading = false;
    // notifyListeners();
  }
}