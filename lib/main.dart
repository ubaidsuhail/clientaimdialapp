import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:aimdialconsultantapp/splashscreen.dart';
import 'package:aimdialconsultantapp/bar/bottombar.dart';
import 'package:aimdialconsultantapp/services/otherservice.dart';
import 'package:aimdialconsultantapp/business/businesslist.dart';


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

    },
  ));
}