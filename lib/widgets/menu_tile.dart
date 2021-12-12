import 'package:flutter/material.dart';
import 'package:restaurant/view/menu_select_sub/menu_select_sub_view.dart';
import 'package:kartal/kartal.dart';
import 'custom_text.dart';

class MenuTile extends StatelessWidget {
  final dynamic e;
  final void Function(double value)? callback;
  const MenuTile(this.e,{Key? key, this.callback }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (e.subMenus != null) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MenuSelectSubView(
                        title: e.caption, price: e.price, items: e.subMenus)));
          }
        },
        child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0.8)),
            width: context.dynamicWidth(1),
            height: context.dynamicHeight(0.1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(e.image!.replaceFirst('.', 'assets')),
                Expanded(
                    child: Center(
                        child: CustomText(
                  e.name,
                  color: Colors.white,
                ))),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: CustomText(
                    '${(e.price ?? '').toString()}' + '${e.price != null ? ' ₺' : ''}',
                    color: Colors.white,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
