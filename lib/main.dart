import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:clientaimdialapp/splashscreen.dart';
import 'package:clientaimdialapp/bar/bottombar.dart';
import 'package:clientaimdialapp/services/otherservice.dart';
import 'package:clientaimdialapp/business/businesslist.dart';
import 'package:clientaimdialapp/business/businessname.dart';
import 'package:clientaimdialapp/business/businesscategory.dart';
import 'package:clientaimdialapp/business/customerlocationchoice.dart';
import 'package:clientaimdialapp/business/businessaddress.dart';
import 'package:clientaimdialapp/business/businessoutsidelocation.dart';
import 'package:clientaimdialapp/business/businessaddfinish.dart';
import 'package:clientaimdialapp/business/businessoptionaladdress.dart';
import 'package:clientaimdialapp/business/businessconnection.dart';
import 'package:clientaimdialapp/business/businessregion.dart';
import 'package:clientaimdialapp/services/viewinsight.dart';
import 'package:clientaimdialapp/registerationscreens/verifyphonenumber.dart';


void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.bottom]);
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp,DeviceOrientation.portraitUp]);
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    routes: <String, WidgetBuilder>{
    'BottomBars' : (BuildContext context) =>BottomBar(),
    'OtherServices' : (BuildContext context) =>OtherService(),
    'BusinessLists' : (BuildContext context) =>BusinessList(),
    'BusinessNames' : (BuildContext context) =>BusinessName(),
    'BusinessCategorys' : (BuildContext context) =>BusinessCategory(),
    'CustomerLocationChoices' : (BuildContext context) =>CustomerLocationChoice(),
    'BusinessAddresses' : (BuildContext context) =>BusinessAddress(),
    'BusinessOutsideLocations' : (BuildContext context) =>BusinessOutsideLocation(),
    'BusinessAddFinishs' : (BuildContext context) =>BusinessAddFinish(),
    'BusinessOptionalAddresses' : (BuildContext context) =>BusinessOptionalAddress(),
    'BusinessConnections' : (BuildContext context) =>BusinessConnection(),
    'BusinessRegions' : (BuildContext context) =>BusinessRegion(),
    'ViewInsights' : (BuildContext context) =>ViewInsight(),



    },
  ));
}