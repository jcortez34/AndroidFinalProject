import 'package:flutter/material.dart';
import 'package:android_final_project/MenuItem.dart';
import 'package:scoped_model/scoped_model.dart';

List<MenuItem> mainTypes = <MenuItem>[
  MenuItem('Drinks', 'assets/img/drinks.jpg'),
  MenuItem('Food', 'assets/img/food.jpg'),
  MenuItem('Desserts', 'assets/img/desserts.jpg'),
];


List<MenuItem> drinksMenu = <MenuItem>[
  MenuItem('Black Coffee', 'assets/img/black-coffee.jpeg'),
  MenuItem('Cappuccino', 'assets/img/cappuccino.jpeg'),
  MenuItem('Espresso', 'assets/img/espresso.jpeg'),
  MenuItem('Latte', 'assets/img/latte.jpeg'),
  MenuItem('Black Tea', 'assets/img/black-tea.jpeg'),
  MenuItem('Brown Tea', 'assets/img/brown-tea.jpeg'),
  MenuItem('English Tea', 'assets/img/english-tea.jpeg'),
  MenuItem('Herbal Tea', 'assets/img/herbal-tea.jpeg'),
  MenuItem('Mint Tea', 'assets/img/mint-tea.jpeg'),
];

List<MenuItem> foodMenu = <MenuItem>[
MenuItem('Brie Burger', 'assets/img/brie-burger.jpeg'),
MenuItem('Cobb Sandwich', 'assets/img/cobb-sandwich.jpg'),
MenuItem('Grilled Cheese', 'assets/img/grilled-cheese.jpg'),
MenuItem('Hot Dog', 'assets/img/hotdog.jpg'),
];

List<MenuItem> dessertsMenu = <MenuItem>[
MenuItem('Apple Pie', 'assets/img/apple-pie.jpg'),
MenuItem('Choco Cake', 'assets/img/chocolate-cake.jpg'),
MenuItem('Sundae', 'assets/img/sundae.jpg'),
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