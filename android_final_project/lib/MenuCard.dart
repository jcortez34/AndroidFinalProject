import 'package:flutter/material.dart';
import 'package:android_final_project/MenuItem.dart';
import 'package:scoped_model/scoped_model.dart';

List<MenuItem> mainTypes = <MenuItem>[
  MenuItem('Drinks', 'assets/img/drinks.jpg'),
  MenuItem('Food', 'assets/img/food.jpg'),
  MenuItem('Desserts', 'assets/img/desserts.jpg'),
];

class MyModel extends Model
{
  List<MenuItem> _chosenItem = mainTypes;
  List<MenuItem> get chosenItem => _chosenItem;

  void updateMenuList(List<MenuItem> item)
  {
    _chosenItem = item;
    notifyListeners();
  }
}

class MenuCard extends StatelessWidget {

  final MenuItem chosenItem;

  const MenuCard({Key key, this.chosenItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Stack(
          children: <Widget>[
            Image.asset(
              chosenItem.image,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  chosenItem.title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}