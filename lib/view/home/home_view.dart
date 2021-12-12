import 'package:flutter/material.dart';
import 'package:restaurant/view/home/home_view_model.dart';
import 'package:restaurant/widgets/custom_progress_indicator.dart';
import 'package:restaurant/widgets/custom_text.dart';
import 'package:stacked/stacked.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (viewModel) => viewModel.initialize(context),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
                title: const CustomText(
                  'Restoran',
                  color: Colors.white,
                  fontSize: 20,
                ),
                centerTitle: true),
            body: viewModel.isLoading
                ? const CustomProgressIndicator()
                : ListView(
                    children: viewModel.menus != null
                        ? viewModel.menus!.items!.map((e) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: context.dynamicHeight(0.4),
                                width: context.dynamicWidth(1),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(e.image!
                                            .replaceFirst('.', 'assets')))),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                      height: context.dynamicHeight(0.05),
                                      width: context.dynamicWidth(1),
                                      color: Colors.white.withOpacity(0.5),
                                      child: Center(child: CustomText(e.name, color: Colors.black, fontSize: 20,))),
                                ),
                              ),
                            );
                          }).toList()
                        : [],
                  ),
          );
        });
  }
}
