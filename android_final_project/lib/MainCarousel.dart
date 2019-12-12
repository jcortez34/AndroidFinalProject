import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:android_final_project/MenuCard.dart';
import 'package:scoped_model/scoped_model.dart';

class CafeCarouselPage extends StatefulWidget 
{
  @override
  _CafeCarouselPageState createState() => _CafeCarouselPageState();
}

class _CafeCarouselPageState extends State<CafeCarouselPage>
with SingleTicketProviderStateMixin{
    int choice= 0;
    TabController _tabController;
    void initState(){
      super.initState();
      _tabController = TabController(length: mainTypes.length, vsync: this)
    }

    void dispose() {
        _tabController.dispose();
        super.dispose();
      }

    void _changeImage({int delta}) {
    var newTabIndex = _tabController.index + delta;
    print('begin $newTabIndex');
    if (newTabIndex >= mainTypes.length) {
      newTabIndex = 0;
    } else if (newTabIndex < 0) {
      newTabIndex = mainTypes.length - 1;
    }
    print('end $newTabIndex');
    _tabController.animateTo(
      newTabIndex,
    );
    
    Widget build(BuildContext context)
    {
       return SizedBox(
          height: 250.0,
         width: double.infinity,
         child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(
            width: 4.0,
            color: Colors.black,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: <Widget>[
            ScopedModelDescendant<MyModel>(
            rebuildOnChange: false,
            builder: (context, _, model) {

            }
            ],
          ),
        ),
        ),
       );
    }
  }
}