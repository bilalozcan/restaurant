import 'package:flutter/material.dart';
import 'package:restaurant/model/sub_menu_item.dart';
import 'package:restaurant/widgets/custom_text.dart';
import 'package:restaurant/widgets/menu_tile.dart';

class SubMenuView extends StatefulWidget {
  final String? title;
  final List<SubMenuItem>? items;

  const SubMenuView({Key? key, this.items, this.title}) : super(key: key);

  @override
  State<SubMenuView> createState() => _SubMenuViewState();
}

class _SubMenuViewState extends State<SubMenuView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: CustomText(widget.title ?? 'Başlık',
              color: Colors.white, fontSize: 20),
          centerTitle: true),
      body: widget.items!.isNotEmpty
          ? ListView(children: widget.items!.map((e) => MenuTile(e)).toList())
          : const Center(child: CustomText('Hata')),
    );
  }
}
