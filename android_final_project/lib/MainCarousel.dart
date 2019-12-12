import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

}