import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SharedPreferenceApp
{

  Future SetClientInformation(int ClientId , String ClientName , String ClientDateOfBirth , String ClientCellNumber , String ClientPassword) async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs.setInt("clientid", ClientId);
    prefs.setString("clientname", ClientName);
    prefs.setString("clientdateofbirth", ClientDateOfBirth);
    prefs.setString("clientcellnumber", ClientCellNumber);
    prefs.setString("clientpassword", ClientPassword);


  }


  Future<int> GetClientId() async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt("clientid");
  }

  Future<String> GetClientName() async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("clientname");
  }

  Future<String> GetClientDateOfBirth() async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("clientdateofbirth");
  }

  Future<String> GetClientCellNumber() async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("clientcellnumber");
  }

  Future<String> GetClientPassword() async
  {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("clientpassword");
  }





}