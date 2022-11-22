import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MineBottomItemState extends StatelessWidget {
  IconData iconData;
  String name;

  final onTap;

  MineBottomItemState( this.name,this.iconData, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Container(
            height: 58,
            child: Row(
              children: [
                Icon(iconData),
                Expanded(
                  child: Container(
                    child: Text(name),
                    padding: EdgeInsets.only(left: 30),
                  ),
                  flex: 1,
                ),
                Icon(Icons.keyboard_arrow_right)
              ],
            ),
          ),
          Divider(
            height: 1,
            color: Colors.grey,
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
