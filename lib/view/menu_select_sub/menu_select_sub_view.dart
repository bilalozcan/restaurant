import 'package:flutter/material.dart';
import 'package:restaurant/widgets/custom_progress_indicator.dart';
import 'package:restaurant/widgets/custom_text.dart';
import 'package:restaurant/widgets/menu_tile.dart';
import 'package:stacked/stacked.dart';

import 'menu_select_sub_view_model.dart';

class MenuSelectSubView extends StatefulWidget {
  final String? title;
  final String? price;
  final List<String>? items;

  const MenuSelectSubView({Key? key, this.title, this.items, this.price})
      : super(key: key);

  @override
  _MenuSelectSubViewState createState() => _MenuSelectSubViewState();
}

class _MenuSelectSubViewState extends State<MenuSelectSubView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MenuSelectSubViewModel>.reactive(
        viewModelBuilder: () => MenuSelectSubViewModel(),
        onModelReady: (viewModel) =>
            viewModel.initialize(context, widget.items),
        builder: (context, viewModel, child) {
          return Scaffold(
            backgroundColor: Colors.grey.shade900,
            appBar: AppBar(
              backgroundColor: Colors.grey.shade900,
              title: CustomText(widget.title ?? 'Başlık',
                  color: Colors.white, fontSize: 20),
              centerTitle: true,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Center(
                      child: CustomText(
                    '${widget.price} ₺',
                    color: Colors.white,
                    fontSize: 20,
                  )),
                )
              ],
            ),
            body: viewModel.isLoading
                ? const CustomProgressIndicator()
                : Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () => viewModel.controller.previousPage(
                                duration: const Duration(seconds: 1),
                                curve: Curves.bounceOut),
                            icon: const Icon(
                              Icons.chevron_left,
                              color: Colors.white,
                              size: 32,
                            ),
                          ),
                          IconButton(
                              onPressed: () => viewModel.controller.nextPage(
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.bounceOut),
                              icon: const Icon(Icons.chevron_right,
                                  color: Colors.white, size: 32))
                        ],
                      ),
                      Expanded(
                        child: PageView(
                          controller: viewModel.controller,
                          children: viewModel.menuList!
                              .map((e) => Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        CustomText(
                                          e.description,
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                        Expanded(
                                          child: ListView(
                                            children: e.items!
                                                .map((subMenu) =>
                                                    MenuTile(subMenu,callback: (value) {
                                                    },))
                                                .toList(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
          );
        });
  }
}
