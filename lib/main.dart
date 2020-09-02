import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:aimdialconsultantapp/splashscreen.dart';
import 'package:aimdialconsultantapp/bar/bottombar.dart';
import 'package:aimdialconsultantapp/services/otherservice.dart';
import 'package:aimdialconsultantapp/business/businesslist.dart';
import 'package:aimdialconsultantapp/business/businessname.dart';
import 'package:aimdialconsultantapp/business/businesscategory.dart';
import 'package:aimdialconsultantapp/business/customerlocationchoice.dart';
import 'package:aimdialconsultantapp/business/businessaddress.dart';
import 'package:aimdialconsultantapp/business/businessoutsidelocation.dart';
import 'package:aimdialconsultantapp/business/businessaddfinish.dart';
import 'package:aimdialconsultantapp/business/businessoptionaladdress.dart';
import 'package:aimdialconsultantapp/business/businessconnection.dart';
import 'package:aimdialconsultantapp/business/businessregion.dart';
import 'package:aimdialconsultantapp/services/viewinsight.dart';
import 'package:aimdialconsultantapp/registerationscreens/verifyphonenumber.dart';


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