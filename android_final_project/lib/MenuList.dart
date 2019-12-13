import 'package:android_final_project/MenuCard.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class MenuList extends StatelessWidget{
  @override
   Widget build(BuildContext context) {
    return ScopedModelDescendant<MyModel>(
      builder: (context, _, model){
        return Expanded(
          child: GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(6.0),
          children: model.chosenItem.map((menuItem) {
            return MenuCard(
              chosenItem: menuItem,
            );
          }).toList(),
        ),
      );
    },
    );
  }
}