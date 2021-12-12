import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:kartal/kartal.dart';

class SplashViewModel extends BaseViewModel {
  late BuildContext context;

  void initialize(BuildContext context) async {
    this.context = context;
    await Future.delayed(const Duration(seconds: 3));
    context.navigateToReset('/');
  }
}