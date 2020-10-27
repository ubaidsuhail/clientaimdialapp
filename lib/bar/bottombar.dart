import 'package:flutter/material.dart';
import 'package:clientaimdialapp/services/clientservice.dart';
import 'package:clientaimdialapp/services/servicesname.dart';
import 'package:clientaimdialapp/registerationscreens/updateprofile.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> with SingleTickerProviderStateMixin {
  TabController tabs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabs = new TabController(length: 3, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new TabBarView(
        controller: tabs,
        children: <Widget>[
          ClientService(),
          ServicesName(),
          UpdateProfile(),
        ],
      ),

    bottomNavigationBar: new Material(
    //color: Colors.blue,
      elevation: 5.0,
          child: new TabBar(
          controller: tabs,
            indicatorColor:Colors.transparent,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black54,
          tabs: <Widget>[
            Tab(child: Column(
              children: <Widget>[
                Padding(
                    padding:EdgeInsets.only(top: 5.0),
                    child:
                    Icon(Icons.home)),
                Text('Home',style: TextStyle(fontSize: 12.0),)
              ],
            )),

            Tab(child: Column(
              children: <Widget>[
                Padding(
                    padding:EdgeInsets.only(top: 5.0),
                    child:
                    Icon(Icons.storage)),
                Text('Services',style: TextStyle(fontSize: 12.0),)
              ],
            )),

            Tab(child: Column(
              children: <Widget>[
                Padding(
                    padding:EdgeInsets.only(top: 5.0),
                    child:
                    Icon(Icons.create)),
                Text('Profile',style: TextStyle(fontSize: 12.0),)
              ],
            )),
          ],
    ),
    ),


    );
  }
}
